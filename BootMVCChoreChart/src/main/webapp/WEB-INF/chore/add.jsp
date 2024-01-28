<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Add Chore</title>
</head>
<body>
    <h3>Add Chore</h3>
    <form action="/addChore" method="post">
        <div>
            <!-- Title input with required attribute -->
            Title: <input type="text" name="title" required /> <br>

            <!-- Room input -->
            Room: <input type="text" name="room" /> <br>

            <!-- Frequency Weekday input -->
            Frequency Weekday: <input type="text" name="frequencyWeekday" /> <br>

            <!-- Difficulty Ranking input -->
            Difficulty Ranking: <input type="text" name="difficultyRanking" /> <br>

            <!-- Tool input -->
            Tool: <input type="text" name="tool" /> <br>

            <!-- Instructions input -->
            Instructions: <input type="text" name="instructions" /> <br>

            <!-- Additional Information input -->
            Additional Information: <input type="text" name="additionalInformation" /> <br>

            <!-- Description input -->
            Description: <input type="text" name="description" required /> <br>

            <input type="submit" value="Add Chore" />
        </div>
    </form>
    
     <c:if test="${not empty choreAdded}">
        <h3>Chore Added</h3>
        
        <c:if test="${choreAdded}">
            <p>Chore added successfully!</p>
            <p>New Chore Details:</p>
            <p>Title: ${newChore.title}</p>
            <p>Description: ${newChore.description}</p>
            <!-- Add other chore details here -->
        </c:if>
        
        <c:if test="${not choreAdded}">
            <p>Error: Chore not added. Please try again.</p>
        </c:if>
    </c:if>
</body>
</html>

