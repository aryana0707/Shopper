<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*, p1.ConToDB"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
		String name = request.getParameter("uname");
		String pass=request.getParameter("upass");
		
		try{
			
			Connection conn=ConToDB.getConnect();
			String sql="select * from userdata where EMAIL=? AND password=?";
			
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, name);
			pst.setString(2, pass);
			
			ResultSet rs=pst.executeQuery();
			
			if(rs.next()){
				out.println("THIS IS THE AFTER LOGIN PAGE");
			}else{
				out.println("Username or password you have entered is not correct.");
			}
						
		}catch(Exception e){
			out.println(e);
			out.println("Username or password you have entered is not correct.");
		}
		
	%>
	

</body>
</html>