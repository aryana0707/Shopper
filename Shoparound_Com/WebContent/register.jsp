<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign up</title>

	<script type="text/javascript">
	
	var mail=document.fr1.emailid.value;
	
	var check=document.fr1.lic[0].checked;
	
		function validate(){
			
			var pass=document.fr1.upass.value;
			var pass1=document.fr1.cpass.value;
			
			var mail=document.fr1.emailid.value;
			var atpos=mail.indexOf("@");
			var dotpos=mail.lastIndexOf(".");
			if(atpos < 1 || dotpos<atpos+2 || dotpos + 2 >= mail.length && mail.length==0){
				alert("Not a valid email address");
				document.fr1.emailid.focus();
				return false;		
			}
			
			
			if(pass.length < 8){
				alert("Your password must be 8 character long");
				document.fr1.upass.focus();
				return false;
			}
			
			if(pass1 != pass){
				alert("Password not matching please try again.");
				document.fr1.cpass.focus();
				return false;
			}
	
			
		}
	</script>


</head>
<body>
	<%@include file="header.html" %>
	<br/>
	<h1 style="color: blue;" align="center">Customer Sign up Form!</h1>
	<form action="processR.jsp" name="fr1" onsubmit="return validate();">
		<table align="center" bgcolor="lightblue" width="60%" cellpadding="8" cellspacing="8">
			<tr>
				<td>Email </td>
				<td><input type="text" name="emailid" size="30"></td>
			</tr>
			
			<tr>
				<td>Password</td>
				<td><input type="password" name="upass" size="30"></td>
			</tr>
			
			<tr>
				<td>Confirm Password</td>
				<td><input type="password" name="cpass" size="30"></td>
			</tr>
			
			<tr>
				<td><input type="checkbox" name="lic" value="accepted"></td>
				<td>Agree with all privacy <a href="term.html">term and conditions</a> mentioned in this document.</td>
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