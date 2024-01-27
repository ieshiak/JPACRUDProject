<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Add Chore</title>
<body>
    <h3>Add Chore</h3>
    <form action="/addChore" method="POST">

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

            <input type="submit" value="Add Chore" />
        </div>
    </form>

</body>
</html>
