<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
<title>Insert title here</title>
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Raleway:400,800);
figure.snip1171 {
  font-family: 'Raleway', Arial, sa  ns-serif;
  position: relative;
  float: left;
  overflow: hidden;
  margin: 10px 1%;
  min-width: 220px;
  max-width: 310px;
  width: 100%;
  background: #000000;
  color: #333;
  text-align: left;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
}
figure.snip1171 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.35s cubic-bezier(0.25, 0.5, 0.5, 0.9);
  transition: all 0.35s cubic-bezier(0.25, 0.5, 0.5, 0.9);
}
figure.snip1171 img {
  max-width: 100%;
  vertical-align: top;
}
figure.snip1171 figcaption {
  position: relative;
  background-color: #ffffff;
  padding: 20px 25px 50px;
}
figure.snip1171 h3 {
  position: absolute;
  bottom: 100%;
  text-transform: uppercase;
  padding: 0px 25px;
  line-height: 44px;
  margin: 0;
  left: 0;
  font-weight: 400;
  background-color: #000000;
  color: #ffffff;
}
figure.snip1171 h3 span {
  font-weight: 800;
}
figure.snip1171 h3:before {
  position: absolute;
  left: 100%;
  border-style: solid;
  border-width: 44px 0 0 12px;
  border-color: transparent transparent transparent #000000;
  content: '';
  top: 0;
}
figure.snip1171 p {
  font-size: 0.8em;
  font-weight: 500;
  text-align: left;
  margin: 0;
  line-height: 1.6em;
}
figure.snip1171 .price {
  position: absolute;
  top: 0;
  right: 0;
  color: #ffffff;
  background-color: #000000;
  padding: 0 10px;
  line-height: 40px;
  font-weight: 800;
}
figure.snip1171 .price:before {
  position: absolute;
  right: 100%;
  border-style: solid;
  border-width: 0 12px 40px 0;
  border-color: transparent #000000 transparent;
  content: '';
  top: 0;
}
figure.snip1171 a {
  text-decoration: none;
  position: absolute;
  bottom: 0;
  right: 0;
  background-color: #000000;
  line-height: 40px;
  padding: 0 10px;
  color: #ffffff;
  font-weight: 800;
  font-size: 0.9em;
  text-transform: uppercase;
}
figure.snip1171 a:before {
  position: absolute;
  right: 100%;
  border-style: solid;
  border-width: 0 0 40px 12px;
  border-color: transparent transparent #000000;
  content: '';
  top: 0;
}
figure.snip1171.blue {
  background-color: #2472a4;
}
figure.snip1171.blue h3,
figure.snip1171.blue a,
figure.snip1171.blue .price {
  background-color: #2472a4;
}
figure.snip1171.blue .price:before {
  border-color: transparent #2472a4 transparent;
}
figure.snip1171.blue h3:before {
  border-color: transparent transparent transparent #2472a4;
}
figure.snip1171.blue a:before {
  border-color: transparent transparent #2472a4;
}
figure.snip1171.red {
  background-color: #ab3326;
}
figure.snip1171.red h3,
figure.snip1171.red a,
figure.snip1171.red .price {
  background-color: #ab3326;
}
figure.snip1171.red .price:before {
  border-color: transparent #ab3326 transparent;
}
figure.snip1171.red h3:before {
  border-color: transparent transparent transparent #ab3326;
}
figure.snip1171.red a:before {
  border-color: transparent transparent #ab3326;
}
figure.snip1171.orange {
  background-color: #d67118;
}
figure.snip1171.orange h3,
figure.snip1171.orange a,
figure.snip1171.orange .price {
  background-color: #d67118;
}
figure.snip1171.orange .price:before {
  border-color: transparent #d67118 transparent;
}
figure.snip1171.orange h3:before {
  border-color: transparent transparent transparent #d67118;
}
figure.snip1171.orange a:before {
  border-color: transparent transparent #d67118;
}
figure.snip1171:hover img,
figure.snip1171.hover img {
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
}

</style>

</head>
<body>

<%-- <figure class="snip1171">
	

	<div class ="row list-group">
	
	<c:forEach items="${productList}" var="product">	

<div class="menu">
<div class="w3-container">
<h3>
	${product.name}
	</h3>
	</div>

<div class="w3-card-2" align="center">	

<a href="<spring:url value="productdetails?id=${product.id}"/>">
    <img class="group list-group-image" src="<c:url value="resources/images/Product/${product.id}.jpg"/>" alt="${product.id}" width="300" height="300">
  </a>
 <div class="w3-container" align="left"><a href="<spring:url value="productdetails?id=${product.id}"/>">
          <span class="glyphicon glyphicon-shopping-cart" style="font-size:25px;color:Black"></span>Buy Now</a></div>
<div class="w3-container" align="right"><i class="fa fa-inr" style="font-size:24px"></i>${product.price }</div>
 </div>         
</div>
 
	</c:forEach>
	
	</div>
</figure>
 --%>






<c:forEach items="${productList}" var="product">	
<figure class="snip1171">
   <img class="group list-group-image" src="<c:url value="resources/images/Product/${product.productId}.jpg"/>" alt="${product.productId}" width="300" height="300">
  
  <div class="price">${product.price }</div>
  <figcaption>
    <h3>${product.productName}</h3>
    <p>
     ${product.description}
    </p><a href="productDetails?productId=${product.productId}">More Info</a>
  </figcaption>
</figure>

	</c:forEach>
	


</body>
</html>