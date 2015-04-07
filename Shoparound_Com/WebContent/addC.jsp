<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.ConToDB"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

	int code=Integer.parseInt(request.getParameter("code"));
	String name=request.getParameter("name");
	String des=request.getParameter("des");
	
	java.util.Date dd=new java.util.Date();
	SimpleDateFormat sim=new SimpleDateFormat("dd-MMM-yyyy:hh:mm:ss aaa");
	String dor=sim.format(dd);
	
	try{
		Connection conn=ConToDB.getConnect();
		String sql="insert into category values(?,?,?,?)";
		PreparedStatement pst=conn.prepareStatement(sql);
		
		pst.setInt(1, code);
		pst.setString(2, name);
		pst.setString(3, dor);
		pst.setString(4, des);
		
		
		int x=pst.executeUpdate();
		if(x>0){
			%>
			<h1>Category added.</h1>
			<%
		}else{
			%>
			<h1>Category not added.</h1>
			<%
		}
		
		
	}catch(Exception e){
		System.out.println(e);
		%>
		<h1>Category not added.</h1>
		<%
	}
%>
</body>
</html>