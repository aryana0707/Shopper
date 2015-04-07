<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="adminheader.html" %>
<br/>

<h1 style="color: red;" align="center">ADD CATEORY FORM!</h1>
<form action="addC.jsp" method="post">
	<table align="center" width="60%" cellpadding="8" cellspacing="8" bgcolor="lightblue">
		<tr>
			<td>Category Code</td>
			<td><input type="text" name="code"></td>
		</tr>
		<tr>
			<td>Category Name</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>Description</td>
			<td><textarea rows="5" cols="25" name="des"></textarea></td>
		</tr>
		<tr>
			<td><input type="submit" value="Submit"></td>
			<td><input type="reset" value="Reset"></td>
		</tr>
	</table>
</form>
<br/>
<br/>
<%@include file="footer.html" %>
</body>
</html>