<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html charset=utf-8">
	<title>REGISTRATION | SHOPPINGO</title>
    <link rel="shortcut icon" href="statics/images/favicon.png" typt="image/png">
    <link rel="stylesheet" href="statics/css/menu.css" type="text/css">
    <link rel="stylesheet" href="statics/css/basicStyle.css" type="text/css">
</head>
<body>
   <header>
        <jsp:include page="menu1.jsp" />
        <jsp:include page="menu4.jsp" />
	</header> 
    <section>
        <center>
	<form method="post" action="registerServlet">
			<table border="3" width="30%" cellpadding="3">
				<thead>
					<tr>
						<th colspan="2">Registration Form</th>
					</tr>
				</thead>
				<tbody>
					<tr>
                        <td>User Name</td>
                        <td><input type="text" name="name"  required /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email"  required/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" required/></td>
                    </tr>
                    <tr>
                        <td><input type="reset" value="Reset" /></td>
                        <td><input type="submit" value="Submit" /></td>
                    </tr>					
                    <tr>
						<td colspan="2">Already Registered.?<a href="login.jsp">Login</a></td>
					</tr>
				</tbody>
			</table>
    </form>
    </center>
    </section>
</body>
</html>