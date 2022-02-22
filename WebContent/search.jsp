<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="book.BookDTO" %>
<%@ page import="java.util.ArrayList" %>

<% 
	String q = request.getParameter("q");
	
	ArrayList<BookDTO> bookList = (ArrayList<BookDTO>) request.getAttribute("bookList");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${param.q } 검색 결과 - 리디북스</title>
	<link rel="stylesheet" href="../css/swiper-bundle.min.css">
    <link href="../css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file="main/header.jsp" %>
	
	<h3>'${param.q }'도서 검색 결과</h3>
	
	<%
		if(bookList.size() == 0) {
	%>
		<div>
			<p>
				'${param.q}'에 대한 도서 검색 결과가 없습니다.
			</p>
		</div>
	<%
		} else {
			for(int i=0; i<bookList.size(); i++) {
	%>
			<div>
				<p>
					<img src="<%= bookList.get(i).getBook_image() %>">
					<%= bookList.get(i).getBook_name() %>
					<%= bookList.get(i).getBuyprice() %>
				</p>
			</div>
		
	<%	
			}
		}
	%>
		
	<script src="../js/fontawesome.js" crossorigin="anonymous"></script>
</body>
</html>