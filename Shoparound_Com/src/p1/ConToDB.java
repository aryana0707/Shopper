package p1;

import java.sql.*;

public class ConToDB{

	public static void main(String[] args){
		ConToDB.getConnect();
	}
//D:\oraclexe\app\oracle\product\10.2.0\server\jdbc\lib
	public static java.sql.Connection getConnect(){

		Connection conn=null;

		try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","shopper","shoppass");

		System.out.println("Connect with Database Server Successfully");
		}catch(Exception e){

			e.printStackTrace();
			System.out.println(e);
		}
		
		return conn;
	}
}