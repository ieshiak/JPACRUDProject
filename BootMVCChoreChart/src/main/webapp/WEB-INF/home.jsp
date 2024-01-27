<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chore Chart</title>
</head>
<body>
	<form action="getChore.do" method="GET">
    Chore ID: <input type="text" name="choreId" />
    <input type="submit" value="Show Chore" />
</form>

<h2>Chore</h2>

<c:forEach var="chore" items="${chores}">
    <div style="border: 1px solid #ccc; margin-bottom: 10px; padding: 10px;">
        <h3>${chore.title}</h3>

        <a href="getChore.do?choreId=${chore.id}">
            View Chore Details
        </a>
    </div>
</c:forEach>

</body>
</html>
