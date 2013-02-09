<%--
  Created by IntelliJ IDEA.
  User: Yu
  Date: 2/9/13
  Time: 6:50 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Add Dish</title>
</head>

<body>
<table>
    <tbody>
    <tr>
        <td>
            Date:
        </td>
        <td>
            ${meal.date.dateString}
        </td>
    </tr>
    <tr>
        <td>
            Number of People:
        </td>
        <td>
            ${meal.numOfPeople}
        </td>
    </tr>
    <tr>
        <td>
            Meal Theme:
        </td>
        <td>
            ${meal.theme}
        </td>
    </tr>
    <g:each in="${meal.getCourse()}">
        <tr>
            <td>
                Course Serving:
            </td>
            <td>
                ${it.dish.name}
            </td>
        </tr>
    </g:each>
    <tr>
        <td>
            Total Estimated Sum:
        </td>
        <td>
            ${sum}
        </td>
    </tr>
    </tbody>
</table>
</body>
</html>