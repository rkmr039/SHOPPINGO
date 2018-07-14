<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<HTML>
<head>
	<title>HOME | SHOPPINGO</title>
	<link rel="shortcut icon" href="statics/images/favicon.png" typt="image/png">
	<link rel="stylesheet" href="statics/css/menu1.css" type="text/css">
	<link rel="stylesheet" href="statics/css/SLIDESHOW.css" type="text/css">
	<link rel="stylesheet" href="statics/css/basicStyle.css" type="text/css">
</head>
<body>
	<header>

	</header>
	 <div id="menu1body">
        <div id="menu1"> 
            <div id="logo">
                <a href="index.jsp"><!--<img src="statics/images/logo.png" />--></a>
            </div>
            <div id="search-bar">
                <input type="text" name="search" placeholder="Search">
                <button>Search</button>
            </div><!--<br style="clear:left" />-->
            <div id="nav">
                <ul id="sub-nav">
                    <li>
                        <a href="logoutServlet"><b>Logout</b></a>
                    </li>
                    <li>
                        <a href="cart.jsp"><b>MyCart</b></a>
                    </li>
                    <li>
                        <a href="edit.jsp"><b>Edit</b></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
	<jsp:include page="menu4.jsp" />
	<div id="profile">
		<div id="fields">
		<%@page import="java.sql.*;" %>
		<%@page import="javax.servlet.*;" %>
		<%! 
			Connection con = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			int rs=0;
			
		%>
		<%
			String connectionURL = "jdbc:mysql://localhost/test?useSSL=false";
			Class.forName("com.mysql.jdbc.Driver");  
            connection = DriverManager.getConnection(connectionURL, "root", "root12345");  
		%>
		
			<div id="dp"></div>
			<div id="details"></div>
		</div>
		
	</div>
	<footer>
		<jsp:include page="footer.jsp" />
	</footer>
</body>
</HTML>