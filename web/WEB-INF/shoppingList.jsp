<%-- 
    Document   : shoppingList
    Created on : Feb 25, 2021, 5:21:46 PM
    Author     : 826535
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p>Hello ${username} </p>
        
        <p><a href="ShoppingList?action=logout">Logout</a></p>
        
        <form action="" method="post">
            <h2>List</h2>
            <label>Add Item</label><input type="text" name="item" value="">
            <input type="hidden" name="action" value="add">
            <input type="submit" value="Add Item">
        </form>
        
        <p>${message}</p>
        
        <form action="" method="post">
        <ul>
            <c:forEach items="${itemList}" var="itemO">
                <li><input type="radio" name="item" value="${itemO}">${itemO}</li>
            </c:forEach>
        </ul>
            <input type="hidden" name="action" value="delete">
            <c:if test="${itemList.size() > 0}">
                 <input type="submit" value="Delete">
            </c:if>
           
        </form>
        
        
    </body>
</html>
