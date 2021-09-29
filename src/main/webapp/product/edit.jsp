<%@ page import="com.product.model.Product" %><%--
  Created by IntelliJ IDEA.
  User: t
  Date: 9/29/2021
  Time: 4:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit</title>
</head>
<body>
<div>
    <form action="/product?action=edit&id=${product.id}" method="post">
        <input type="text" name="name" placeholder="Name" value="${product.name}">
        <input type="text" name="description" placeholder="description" value="${product.description}">
        <input type="text" name="price" placeholder="price" value="${product.price}">
        <input type="text" name="img" placeholder="image" value="${product.image}">
        <button>Edit</button>
    </form>
</div>
</body>
</html>
