<%@page language="java" contentType="text/html" session="true" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="statics/css/menu1.css" type="text/css"/>
</head>
<body>
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
                        <a href="login.jsp"><b>Login</b></a>
                    </li>
                    <li>
                        <a href="register.jsp"><b>SignUp</b></a>
                    </li>
                    <li>
                        <a href="contact.jsp"><b>Contact Us</b></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>