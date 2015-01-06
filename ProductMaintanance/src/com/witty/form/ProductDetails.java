package com.witty.form;

public class ProductDetails {

	private String pName;
	private String barCode;
	
	public ProductDetails(){
		
	}
	
	public ProductDetails(String pName,String barCode){
		this.pName = pName;
		this.barCode = barCode;
	}
	
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getBarCode() {
		return barCode;
	}
	public void setBarCode(String barCode) {
		this.barCode = barCode;
	}
	
	
}
