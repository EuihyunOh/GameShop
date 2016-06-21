<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Game Shop</title>
  <link href="css/shopping.css" rel="stylesheet">  
  <script type="text/javascript" src="member/member.js"></script>
  <script type="text/javascript" src="mypage/mypage.js"></script> 
</head>

<body>
<div id="wrap">

  <header>
    <!--로고 들어가는 곳 시작--->  
    <div id="logo">
      <a href="gameshopServlet?command=index">
        <img src="images/logo.gif" width="180" height="100" alt="gameshop">
      </a>  
    </div>
    <!--로고 들어가는 곳 끝-->     
    <nav id="catagory_menu">
     <ul>
       <c:choose>
       <c:when test="${empty sessionScope.loginUser}">
       <li>         
         <a href="gameshopServlet?command=login_form" style="width:110px;">LOGIN(CUSTOMER</a>   
	     <a href="gameshopServlet?command=admin_login_form" style="width:100px;">| ADMIN)</a>
	   </li>		       
       <li>/</li>
       <li><a href="gameshopServlet?command=contract">JOIN</a></li>
       </c:when>
       <c:otherwise>
       <li style="color:orange">
         ${sessionScope.loginUser.name}(${sessionScope.loginUser.email})
       </li>
       <li><a href="gameshopServlet?command=logout">LOGOUT</a></li>
       </c:otherwise>       
       </c:choose>
       <li>/</li>
       <li>
         <a href="gameshopServlet?command=cart_list">CART</a>
       </li><li>/</li>
       <li>
         <a href="gameshopServlet?command=mypage">MY PAGE</a>
       </li><li>/</li>
       <li>
         <a href="gameshopServlet?command=qna_list">Q&amp;A(1:1)</a>
       </li>
     </ul>
    </nav>

    <nav id="top_menu">
      <ul>
        <li>
          <a href="gameshopServlet?command=catagory&kind=1">PS4</a>
        </li>  
        <li>
          <a href="gameshopServlet?command=catagory&kind=2">XboxOne</a>
        </li>  
        <li>
          <a href="gameshopServlet?command=catagory&kind=3">3DS</a>
        </li> 
        <li>
          <a href="gameshopServlet?command=catagory&kind=4">PC</a>
        </li> 
        <li>
          <a href="gameshopServlet?command=catagory&kind=5">기타상품</a>
        </li>  
      </ul>
    </nav>
    <div class="clear"></div>
    <hr>
  </header>