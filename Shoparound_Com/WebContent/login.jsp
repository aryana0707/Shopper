<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign in</title>

	<script type="text/javascript">
		function validate(){
			
			var name=document.form1.uname.value;
			var pwd=document.form1.upass.value;
			
			if(name.length==0){
				alert("Please provide your username");
				document.form1.uname.focus();
				return false;
			}
			if(pwd.length==0){
				alert("Please provide your password");
				document.form1.upass.focus();
				return false;
			}
		}
	</script>

</head>
<body>
	<%@include file="header.html" %>
	<br/>
	<h1 style="color: red;" align="center">Sign in Form!</h1>
	<hr>
	<form action="processLog.jsp" name="form1" onsubmit="return validate();">
		<table align="center" bgcolor="lightblue" cellspacing="8" cellpadding="8" width="60%">
			<tr>
				<td>Username or Email </td>
				<td><input type="text" name="uname" size="40"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="upass" size="40"></td>
			</tr>
			<tr>
				<td><a href="forget.jsp">I forget the password.</a></td>
				<td></td>
			</tr>
			
			<tr>
				<td><input type="submit" value="Sign in"></td>
				<td><input type="reset" value="Reset"></td>
			</tr>
		</table>
	</form>
	<br/>
	<br/>
	<%@include file="footer.html"  %>
</body>
</html>