<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.app.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@page import="com.app.dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 전체 목록 조회</title>
</head>
<body>
	<table>
		<tr>
			<th>상품 번호</th>
			<th>상품명</th>
			<th>상품 가격</th>
			<th>상품 재고</th>
		</tr>
		<%
			ProductDAO productDAO = new ProductDAO();
			List<ProductVO> products = productDAO.selectAll();
			
			for(ProductVO product : products){
		%>
			<tr>
				<td><%=product.getId() %></td>
				<td>
					<a href="read.jsp?id=<%=product.getId() %>">
						<%=product.getProductName() %>
					</a>
				</td>
				<td><%=product.getProductPrice() %></td>
				<td><%=product.getProductStock() %></td>
			</tr>
			
		<% 
			}
		%>
	</table>

</body>
</html>


