<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Add Chore</title>
    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
    <h3>Add Chore</h3>
    <form action="/addChore" method="post">
        <div>
            Title: <input type="text" name="title" required /> <br>
            Room: <input type="text" name="room" /> <br>
            Frequency Weekday: <input type="text" name="frequencyWeekday" /> <br>
            Difficulty Ranking: <input type="text" name="difficultyRanking" /> <br>
            Tool: <input type="text" name="tool" /> <br>
            Instructions: <input type="text" name="instructions" /> <br>
            Additional Information: <input type="text" name="additionalInformation" /> <br>
            Description: <input type="text" name="description" required /> <br>

            <input type="submit" value="Add Chore" />
        </div>
    </form>
    
    <c:if test="${pageContext.request.method eq 'POST'}">
        <c:if test="${not empty choreAdded}">
            <h3>Chore Added Successfully</h3>
            
            <c:if test="${choreAdded}">
                <p>New Chore Details:</p>
                <p>Title: ${newChore.title}</p>
                <p>Description: ${newChore.description}</p>
                <p>Room: ${newChore.room}</p>
                <p>Frequency Weekday: ${newChore.frequencyWeekday}</p>
                <p>Difficulty Ranking: ${newChore.difficultyRanking}</p>
                <p>Tool: ${newChore.tool}</p>
                <p>Instructions: ${newChore.instructions}</p>
                <p>Additional Information: ${newChore.additionalInformation}</p>
            </c:if>
            
            <c:if test="${not choreAdded}">
                <p>Error: Chore not added. Please try again.</p>
            </c:if>
        </c:if>
    </c:if>
</body>
</html>

