<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

    <h2 title="I'm a header">The title Attribute</h2>

    <p title="I'm a tooltip">Mouse over this paragraph, to display the title attribute as a tooltip.</p>
    <p>${message}</p>

    <c:forEach var="expense" items="${expenses}">

    <div>
        <h3>${expense.expensename}</h3>
        <p>&#8377; ${expense.amount}</p>
    </div>
    </c:forEach>

</body>
</html>