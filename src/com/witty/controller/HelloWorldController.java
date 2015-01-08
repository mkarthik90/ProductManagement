package com.witty.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.witty.service.IHelloService;
import com.wity.command.LoginCommand;
 

@Controller
public class HelloWorldController {
	
	@Autowired
	@Qualifier("helloService")
	private IHelloService helloService;
	
	@RequestMapping("/homePage.do")
	public ModelAndView getHomePage(@ModelAttribute("loginCommand")LoginCommand loginCommand) {
		
		return new ModelAndView("hello");
	}
 
    @RequestMapping("/login1.do")
    public ModelAndView helloWorld(@ModelAttribute("loginCommand")LoginCommand loginCommand) {
    	System.out.println(loginCommand.getUserName());
    	List details = helloService.getDetails();
    	for(int i=0;i<details.size();i++){
    		System.out.println(details.get(i));
    	}
        String message = "Hello World, Spring 3.0!";
        return new ModelAndView("welcome");
    }
    
    @RequestMapping("/facebookAuth.do")
    public ModelAndView afterLogin(HttpServletRequest request,HttpServletResponse response) {
    	String code = request.getParameter("code");
        if (code == null || code.equals("")) {
            // an error occurred, handle this
        }

        String token = null;
        try {
            String g = "https://graph.facebook.com/oauth/access_token?client_id=ProductMaintanance&redirect_uri=" + URLEncoder.encode("http://localhost:8080/ProductMaintanance/facebookAuth.do", "UTF-8") + "&client_secret=myfacebookappsecret&code=" + code;
            URL u = new URL(g);
            URLConnection c = u.openConnection();
            BufferedReader in = new BufferedReader(new InputStreamReader(c.getInputStream()));
            String inputLine;
            StringBuffer b = new StringBuffer();
            while ((inputLine = in.readLine()) != null)
                b.append(inputLine + "\n");            
            in.close();
            token = b.toString();
            if (token.startsWith("{"))
                throw new Exception("error on requesting token: " + token + " with code: " + code);
        } catch (Exception e) {
                // an error occurred, handle this
        }

        String graph = null;
        try {
            String g = "https://graph.facebook.com/me?" + token;
            URL u = new URL(g);
            URLConnection c = u.openConnection();
            BufferedReader in = new BufferedReader(new InputStreamReader(c.getInputStream()));
            String inputLine;
            StringBuffer b = new StringBuffer();
            while ((inputLine = in.readLine()) != null)
                b.append(inputLine + "\n");            
            in.close();
            graph = b.toString();
        } catch (Exception e) {
                // an error occurred, handle this
        }

        String facebookId;
        String firstName;
        String middleNames;
        String lastName;
        String email;
//        Gender gender;
        try {
            JSONObject json = new JSONObject(graph);
            facebookId = json.getString("id");
            firstName = json.getString("first_name");
            if (json.has("middle_name"))
               middleNames = json.getString("middle_name");
            else
                middleNames = null;
            if (middleNames != null && middleNames.equals(""))
                middleNames = null;
            lastName = json.getString("last_name");
            email = json.getString("email");
  /*          if (json.has("gender")) {
                String g = json.getString("gender");
                if (g.equalsIgnoreCase("female"))
                    gender = Gender.FEMALE;
                else if (g.equalsIgnoreCase("male"))
                    gender = Gender.MALE;
                else
                    gender = Gender.UNKNOWN;
            } else {
                gender = Gender.UNKNOWN;
            }*/
        } catch (JSONException e) {
            // an error occurred, handle this
        }
    	return null;
    }
    
 
}