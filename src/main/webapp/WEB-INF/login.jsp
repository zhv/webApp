<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<body>

<p>
    Please enter your name and password (this is my page):
</p>

<form name='loginForm'
		  action="<c:url value='/j_spring_security_check' />" method='POST'>

		  <table>
			<tr>
				<td>User:</td>
				<td><input type='text' name='j_username' value=''></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='password' name='j_password' /></td>
			</tr>
			<tr>
				<td colspan='2'><input name="submit" type="submit"
					value="submit" /></td>
			</tr>
		  </table>

		  <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />

		</form>

</body>
</html>