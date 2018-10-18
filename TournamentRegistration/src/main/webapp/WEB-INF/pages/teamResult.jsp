<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
 <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC From Handling</title>
</head>
<body> <h2>Team Registration Result</h2>
    <table>
        <tr>
            <td>Team Name</td>
            <td>${t.teamname}</td>
        </tr>
        <tr>
            <td>Team Leader</td>
            <td>${t.leader}</td>
        </tr>
        <tr>
            <td>Password</td>
            <td>${t.password}</td>
        </tr>
        <tr>
            <td>Number of Members</td>
            <td>${t.numOfMembers}</td>
        </tr>
        <tr>
            <td>International Team</td>
            <td>${t.internationalTeam}</td>
        </tr>
        <tr>
            <td>Game</td>
            <td>${t.game}</td>
        </tr>
        </table>
<a href = "viewAll.mvc">View all Teams</a>
</body>
</html>