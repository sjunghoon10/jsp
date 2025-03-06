<%@page import="com.app.vo.ProductVO"%>
<%@page import="java.util.Optional"%>
<%@page import="com.app.dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 단일 조회</title>
</head>
<body>
	<%
		ProductDAO productDAO = new ProductDAO();
		Long id = Long.parseLong(request.getParameter("id"));
		Optional<ProductVO> foundProduct = productDAO.select(id);
		
		if(foundProduct.isPresent()){
			ProductVO product = foundProduct.get();
	%>	
			<table>
			<tr>
				<th>상품 번호</th>
				<th>상품명</th>
				<th>상품 가격</th>
				<th>상품 재고</th>
			</tr>
			<tr>
				<th><%=product.getId() %></th>
				<th><%=product.getProductName() %></th>
				<th><%=product.getProductPrice() %></th>
				<th><%=product.getProductStock() %></th>
			</tr>		
			</table>
			
			<div>
				<a href="update.jsp?id=<%=request.getParameter("id") %>">상품 수정</a>
			</div>
			<div>
				<a href="delete?id=<%=request.getParameter("id") %>">상품 삭제</a>
			</div>
	<%
		}
	%>
</body>
</html>