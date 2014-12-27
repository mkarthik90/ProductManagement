package com.witty.dao;


import javax.sql.DataSource;

import org.springframework.jdbc.datasource.DriverManagerDataSource;


public class DataFactory {

	public static final String DRIVER = "com.mysql.jdbc.Driver";
    public static final String JDBC_URL = "jdbc:mysql://localhost/dbo";
    public static final String USERNAME = "root";
    public static final String PASSWORD = "";

	
/*	public static Connection getConnectionForMySQL(){
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/dbo?"
					+ "user=root&password=");
			Data
		} catch (SQLException ex) {
			// handle any errors
			System.out.println("SQLException: " + ex.getMessage());
			System.out.println("SQLState: " + ex.getSQLState());
			System.out.println("VendorError: " + ex.getErrorCode());
		}
		catch(Exception ex){
			System.out.println("Exception in getting connection");
		}
		return conn;
	}*/
	
	
	 public static DataSource getDataSource() {
	        //
	        // Creates a new instance of DriverManagerDataSource and sets
	        // the required parameters such as the Jdbc Driver class,
	        // Jdbc URL, database user name and password.
	        //
	        DriverManagerDataSource dataSource = new DriverManagerDataSource();
	        dataSource.setDriverClassName(DataFactory.DRIVER);
	        dataSource.setUrl(DataFactory.JDBC_URL);
	        dataSource.setUsername(DataFactory.USERNAME);
	        dataSource.setPassword(DataFactory.PASSWORD);
	        return dataSource;
	    }
	 
	 /*public static void main(String arrp[]){
		 getDataSource();
	 }*/
}
