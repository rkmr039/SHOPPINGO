<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html charset=utf-8">
	<title>LOGIN | SHOPPINGO</title>
	<link rel="shortcut icon" href="statics/images/favicon.png" typt="image/png">
	<link rel="stylesheet" href="statics/css/basicStyle.css" type="text/css">
</head>
<body>	
	<header>
        <jsp:include page="menu1.jsp" />
        <jsp:include page="menu4.jsp" />
	</header>
	<section>
		<center>
	<form method="post" action="loginServlet">
			<table border="3" width="30%" cellpadding="3">
				<thead>
					<tr>
						<th colspan="2">Login</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>User Name</td>
						<td><input type="text" name="name" placeholder="" required/></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="pass" placeholder="" required/></td>
					</tr>
					<tr>
						<td><input type="submit" value="Login" /></td>
						<td><input type="reset" name="Reset" /></td>
					</tr>
					<tr>
						<td colspan="2">Not Yet Registered..!!<a href="register.jsp">Register</a></td>
					</tr>
				</tbody>
			</table>
	</form>
	</center>
	</section>
</body>
</html>