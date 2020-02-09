<%--
  Created by IntelliJ IDEA.
  User: 
  Date: 09.02.2020
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
<table>
    <tr>
        <th>Время</th>
        <th>Описание</th>
        <th>Каллории</th>
    </tr>
    <c:forEach items="${mealList}" var="meal">
        <c:choose>
            <c:when test="${!meal.exceed}">
                <c:set var="color" value="green"/>
            </c:when>
            <c:otherwise>
                <c:set var="color" value="red"/>
            </c:otherwise>
        </c:choose>
            <tr style="color: ${color}">
                <c:forTokens items="${meal.getDateTime()}" delims="T" var="time">
                    ${time}
                </c:forTokens>
                <td>${meal.description}</td>
                <td>${meal.calories}</td>
            </tr>
    </c:forEach>
</table>
</body>
</html>
