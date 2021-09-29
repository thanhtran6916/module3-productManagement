<%--
  Created by IntelliJ IDEA.
  User: t
  Date: 9/29/2021
  Time: 1:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Product</title>
</head>
<body>
<div>
    <form action="/product?action=create" method="post">
        <input type="text" name="name" placeholder="Name">
        <input type="text" name="description" placeholder="description">
        <input type="text" name="price" placeholder="price">
        <input type="text" name="img" placeholder="image">
        <button>Create</button>
    </form>
</div>


</body>
</html>
