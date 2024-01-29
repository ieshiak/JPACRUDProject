<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Chore</title>
    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
 <div>
    <h2>Edit Chore</h2>

   <form method="post" action="/submitEditChore">
    <input type="hidden" name="id" value="${editedChore.id}"/>
    
    <label for="title">Title:</label>
    <input type="text" id="title" name="title" value="${editedChore.title}"/><br/>

    <label for="room">Room:</label>
    <input type="text" id="room" name="room" value="${editedChore.room}"/><br/>

    <label for="description">Description:</label>
    <textarea id="description" name="description">${editedChore.description}</textarea><br/>

    <label for="frequencyWeekday">Frequency:</label>
    <input type="text" id="frequencyWeekday" name="frequencyWeekday" value="${editedChore.frequencyWeekday}"/><br/>

    <label for="difficultyRanking">Difficulty:</label>
    <input type="text" id="difficultyRanking" name="difficultyRanking" value="${editedChore.difficultyRanking}"/><br/>

    <label for="tool">Tool:</label>
    <input type="text" id="tool" name="tool" value="${editedChore.tool}"/><br/>

    <label for="instructions">Instructions:</label>
    <textarea id="instructions" name="instructions">${editedChore.instructions}</textarea><br/>

    <label for="additionalInformation">Additional Information:</label>
    <textarea id="additionalInformation" name="additionalInformation">${editedChore.additionalInformation}</textarea><br/>

    <input type="submit" value="Submit"/>
     </div>
</form>


</body>
</html>
