<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Veggie</title>
    <link rel="stylesheet" href="css/sample.css">
</head>
<body>
<jsp:include page="header.jsp"/>

<main>
    <article>
        <h1>Vegetarian products</h1>
        <c:if test="${vegetarian != null}">
        <c:forEach items="${vegetarian}" var="v">
        <table>
            <tr>
                <th>Name</th>
                <th>Price</th>
            </tr>
                <tr>
                    <td><c:out value="${v.name}"/></td>
                    <td><c:out value="${v.price}"/></td>
                </tr></c:forEach>
            </c:if>
        </table>
    </article>
</main>
</body>
</html>