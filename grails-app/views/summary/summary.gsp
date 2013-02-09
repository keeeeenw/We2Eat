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
            Maximum Accommodation:
        </td>
        <td>
            ${meal.numOfPeople}
        </td>
    </tr>
    <tr>
        <td>
            Number of Participants:
        </td>
        <td>
            ${meal.getParticipant().size()}
        </td>
    </tr>
    <tr>
        <td>
            Number of Paid Participants:
        </td>
        <td>
            ${sumPaid}
        </td>
    </tr>
    <tr>
        <td>
            Clear for Advance:
        </td>
        <td>
            ${clear}
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
    <tr>
        <td>
            Meal Location:
        </td>
        <td>
            ${meal.location}
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
            Total Estimated Cost:
        </td>
        <td>
            ${sumCost}
        </td>
    </tr>
    </tbody>
</table>

<g:form name="backMenu" controller="Togetherweeat" action="show">
    <g:submitButton name="submit" value="Back To Main Menu"></g:submitButton>
</g:form>

<g:form name="CloseMeal" controller="SummaryController" action="closeMeal">
    <g:submitButton name="submit" value="Close this Feast"></g:submitButton>
</g:form>

</body>
</html>