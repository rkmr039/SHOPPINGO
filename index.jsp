<%@page language="java" contentType="text/html" session="true" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>HOME | SHOPPINGO</title>
	<link rel="shortcut icon" href="statics/images/favicon.png" typt="image/png"/>
	<link rel="stylesheet" href="statics/css/basicStyle.css" type="text/css">
	<style>
		
	</style>
</head>
<body>
	<header>
        <jsp:include page="menu1.jsp" />
        <jsp:include page="menu4.jsp" />
	</header>
	<div >
        <jsp:include page="slideshow.jsp" />
	</div>	
	<div id="middle-section">

	</div>
	<footer>
		<jsp:include page="footer.jsp" />
	</footer>
</body>
</html>