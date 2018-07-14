<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<HTML>
<head>
	<title>CONTACT US | SHOPPINGO</title>
	<link rel="shortcut icon" href="statics/images/favicon.png" typt="image/png">
	<link rel="stylesheet" href="statics/css/menu1.css" type="text/css">
	<link rel="stylesheet" href="statics/css/payment.css" type="text/css">
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
                        <a href="profile.jsp"><b>Profile</b></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
	<jsp:include page="menu4.jsp" />	
	<div id="middle-section">
		<div id="payment-form">
			<div class="form-field" id="form-head">
				<h3>Payment Details</h3>
			</div>
			<div class="form-field" id="">
			<label>CARD NUMBER</label>
			<input type="tel" placeholder="CARD NUMBER" ></input>
			</div>
			<div class="form-field" id="date-cvv">
			<div id="date">
			<label>EXPIRATION DATE</label>
			<input type="tel" placeholder="MM / YY"></input>
			</div>
			<div id="cvv">
			<label>CVV CODE</label>
			<input type="tel" placeholder="CVV"></input>
			</div>
			</div>
			<div class="form-field" id="">
			<label>COUPEN CODE </label>
			<input type="tel" placeholder="COUPEN CODE"></input>
			</div>
			<div class="form-field" id=""> 
			<button > Payment </button>
			</div>	
		</div>
	</div>
	<footer>
		<jsp:include page="footer.jsp" />
	</footer>
</body>
</HTML>