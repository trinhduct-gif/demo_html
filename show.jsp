<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <form action="show" method="get">
            Enter coach name: <input type="text" name="coachName" value="${param.coachName}" /><br/>
            Choose a position: 
            <input type="radio" name="position" value="Goalkeeper" ${param.position == 'Goalkeeper' ? 'checked':''} /> Goalkeeper
            <input type="radio" name="position" value="Fitness" ${param.position == 'Fitness' ? 'checked':''} /> Fitness
            <input type="radio" name="position" value="Head" ${param.position == 'Head' ? 'checked':''} /> Head <br/>
            Enter years of experience: <input type="text" name="yearsOfExperience" value="${param.yearsOfExperience}" /><br/>
            <input type="submit" value="SHOW" />
            <p style="color: red">${error}</p>
        </form>

        <table border="1">
    <thead>
        <tr>
            <th>Coach Name</th>
            <th>Position</th>
            <th>Experience</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${sessionScope.coachList}" var="c">
            <tr>
                <td>${c.name}</td>
                <td>${c.position}</td>
                <td>${c.years}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
    </body>
</html>