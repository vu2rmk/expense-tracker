<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

    <h2 >Add Expense</h2>

    <form:form action="${contextRoot}/expense" method="post" modelAttribute="expense">

        <form:input path="expensename" placeholder="Enter expense name" />
        <form:input path="amount" placeholder="Enter expense amount" />
        <form:textarea path="note" placeholder="Enter note (optional)" />

        <button type="submit">Add Expense</button>
    </form:form>

</body>
</html>