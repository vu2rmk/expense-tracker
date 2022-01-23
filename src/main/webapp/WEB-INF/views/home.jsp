<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

    <h2 >Expense Tracker</h2>
    <p>${message}</p>
    <a href="${contextRoot}/expense">Add Expense</a>

    <c:forEach var="expense" items="${expenses}">

    <div>
        <h3>${expense.expensename}</h3>
        <p>&#8377; ${expense.amount}</p>
    </div>
    </c:forEach>

</body>
</html>