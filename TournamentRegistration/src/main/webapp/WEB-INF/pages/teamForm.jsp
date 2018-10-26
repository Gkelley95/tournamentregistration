<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC Form Handling</title>
<script src="script.js"></script>
</head>
<body>
<h2>Team Registration Form</h2>
<mvc:form name="entryform" modelAttribute="team" action="result.mvc" onsubmit="return validateInfo()">
	<table>
	    <tr>
	        <td><mvc:label path="teamname">Team Name</mvc:label></td>
	        <td><mvc:input path="teamname" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="leader">Team Leader</mvc:label></td>
	        <td><mvc:input path="leader" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="password">Password</mvc:label></td>
	        <td><mvc:password path="password" /></td>
	    </tr>
   	    <tr>
	        <td><mvc:label path="numOfMembers">Number of Members</mvc:label></td>
	        <td><mvc:input path="numOfMembers" /></td>
	    </tr>
		<tr>
            <td><mvc:label path="internationalTeam">International Team</mvc:label></td>
            <td><mvc:checkbox path="internationalTeam" /></td>
        </tr>
        <tr>
            <td><mvc:label path="game">Game</mvc:label></td>
            <td><mvc:select path="game" items="${games}" /></td>
        </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAll.mvc">View all Teams</a>
</body>
</html>