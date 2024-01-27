<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Chore List</title>
</head>
<body>

<h2>Chore List</h2>

<c:if test="${chore ne null}">
    <div>
        <h3><a href="getChore.do?choreId=${chore.id}">${chore.title}</a></h3>
        <p>ID: ${chore.id}</p>
        <p>Description: ${chore.description}</p>
        <p>Room: ${chore.room}</p>
        <p>Frequency: ${chore.frequencyWeekday}</p>
        <p>Difficulty: ${chore.difficultyRanking}</p>
        <p>Tool: ${chore.tool}</p>
        <p>Instructions: ${chore.instructions}</p>
        <p>Additional Information: ${chore.additionalInformation}</p>
    </div>
</c:if>

<c:if test="${chore eq null}">
    <h2>Film not found.</h2>
</c:if>

</body>
</html>
</body>
</html>
