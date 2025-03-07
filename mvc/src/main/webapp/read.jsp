<%@page import="com.app.vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품정보페이지</title>
</head>
<body>

<%
	ProductVO product = (ProductVO)request.getAttribute("product");
%>
<table>
    <tr>
        <th>상품번호</th>
        <th>상품명</th>
        <th>상품가격</th>
        <th>상품재고</th>
    </tr>
    <tr>
        <td><%= product.getId() %></td>
        <td>
            <a href="read.product?id=<%= product.getId() %>">
                <%= product.getProductName() %>
            </a>
        </td>
        <td><%= product.getProductPrice() %></td>
        <td><%= product.getProductStock() %></td>
    </tr>
</table>
<div>
<a href="list.product">목록으로 가기</a>
<a href="update.product?id=<%=product.getId() %>">상품 수정</a>
<a href="delete-ok.product?id=<%=product.getId() %>">상품 삭제</a>
</div>
</body>
</html>