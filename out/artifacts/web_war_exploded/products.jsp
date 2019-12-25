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
        <h1>All products</h1>

        <table>
            <c:if test="${products != null}">
                <c:forEach items="${products}" var="p">
            <tr>
                <th>Name</th>
                <th>Price</th>
                <th>Vegetarian</th>
            </tr>
                <tr>
                    <td><c:out value="${p.nale}"/></td>
                    <td><c:out value="${p.price}"/></td>
                    <td><c:out value="${p.vegetarian}"/></td>
                </tr></c:forEach>
            </c:if>
        </table>
        <form action="Controller?action=SortProducts">
            <input class="small" type="submit" value="Sort by Price">
        </form>
        <p><a href="Controller?action=Home">Go home.</a></p>
    </article>
</main>
</body>
</html>