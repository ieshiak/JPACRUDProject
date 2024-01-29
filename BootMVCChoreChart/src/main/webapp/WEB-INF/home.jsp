<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
    <form action="getChore.do" method="GET">
        SHOW Chore ID: <input type="text" name="choreId" required />
        <input type="submit" value="Show Chore" />
    </form>
    
   <h2>All Chores</h2>

<c:forEach var="chore" items="${chores}">
    <p>
        <a href="getChore.do?choreId=${chore.id}">
            ${chore.title}
        </a>
    </p>
</c:forEach>
    
    
</body>
</html>
