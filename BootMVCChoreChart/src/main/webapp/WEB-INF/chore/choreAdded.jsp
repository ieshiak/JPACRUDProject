<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Chore Added</title>
</head>
<body>
    <h2>Chore Added Successfully!</h2>
    
    <!-- Display details of the added chore, if available -->
    <c:if test="${not empty chore}">
        <h3>${chore.title}</h3>
        <p>ID: ${chore.id}</p>
        <!-- Add other chore details as needed -->
    </c:if>

    <a href="<c:url value='/choreList' />">Back to Chores List</a>
</body>
</html>
