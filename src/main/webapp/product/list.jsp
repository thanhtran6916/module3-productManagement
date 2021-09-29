<%@ page import="com.product.model.Product" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: t
  Date: 9/29/2021
  Time: 11:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Show product</title>
</head>
<body>

<div>
    <a href="/product/create.jsp">Create Product</a>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Description</th>
            <th>Image</th>
        </tr>
        <c:forEach items="${products}" var="product">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.price}</td>
                <td>${product.description}</td>
                <td>${product.image}</td>
                <td><a href="/product?action=delete&id=${product.id}">Delete</a></td>
                <td><a href="/product?action=edit&id=${product.id}">Edit</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
