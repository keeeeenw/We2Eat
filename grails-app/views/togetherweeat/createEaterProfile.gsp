<%--
  Created by IntelliJ IDEA.
  User: zixiao
  Date: 2/9/13
  Time: 12:45 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta name="layout" content="main" />
  <title>Pick Meal</title>
</head>
<body>
    <table>
        <tbody>
            <tr>
              <td>Available</td>
              <td>Theme</td>
              <td>Location</td>
              <td>Date</td>
              <td>Join</td>
            </tr>
            <g:each in="${meals}">
            <tr>
              <td>${it.participant.size()}/${it.numOfPeople}</td>
              <td>${it.theme}</td>
              <td>${it.location}</td>
              <td>${it.date}</td>
              <td><a href="${g.createLink(controller: 'Meal', action: 'joinMeal', params: [mealid:it.id])}">Join</a></td>
            </tr>
            </g:each>
        </tbody>
    </table>

</body>
</html>