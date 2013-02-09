<%--
  Created by IntelliJ IDEA.
  User: Yu
  Date: 2/9/13
  Time: 3:31 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Add Dish</title>

    <style type="text/css">

        #main{
            margin: 50px 100px;
        }

        #submitted{
            margin: 50px 100px;
            display: block;
        }

        #submitted a{
            padding-left: 50px;
            text-align: right;
        }

        #submitted p{
            margin: 20px;
        }
    </style>
</head>

<body>

<div id="submitted">
    <h1>You already have:</h1>

    <g:each in="${meal.getCourse()}">
        <p>${it.dish.name} with estimated cost $${it.dish.cost}</p>
    </g:each>
    <g:link controller="Dish" action="submitdishes">Submit Dishes</g:link>
</div>

<div id="main">

    <h1>Add New Dish</h1>

    <g:form name="menuForm" controller="Dish" action="submitDishInfo">
      <table>
      <tbody>
      <tr>
        <td>
            <label for="name">Name:</label>
        </td>
        <td>
        <g:textField name="name" value=""/>
        </td>
        </tr>
        <tr>
            <td>
                <label for="flavor">Flavor:</label>
            </td>
            <td>
                <g:textField name="flavor" value=""/>
            </td>
        </tr>
        <tr>
            <td>
                <label for="type">Type:</label>
            </td>
            <td>
                <g:textField name="type" value=""/>
            </td>
        </tr>
        <tr>
            <td>
                <label for="material">Material:</label>
            </td>
            <td>
                <g:textField name="material" value=""/>
            </td>
        </tr>
        <tr>
            <td>
                <label for="method">Cooking Method:</label>
            </td>
            <td>
                <g:textField name="method" value=""/>
            </td>
        </tr>
        <tr>
            <td>
                <label for="alert">Alert:</label>
            </td>
            <td>
                <g:textField name="alert" value=""/>
            </td>
        </tr>
        <tr>
            <td>
                <label for="cost">Estimated Cost:</label>
            </td>
            <td>
                <g:textField name="cost" value=""/>
            </td>
        </tr>
        <tr>
            <td>
                <label for="recipe">Recipe:</label>
            </td>
            <td>
                <g:textArea name="recipe" value="" rows="10" cols="40"/>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <g:actionSubmit value="Upload Photo" action="UpdatePhoto"></g:actionSubmit>
            </td>
            <td>
                <g:actionSubmit value="Upload Video" action="UpdateVideo"></g:actionSubmit>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <g:submitButton name="submit" value="Create Dish"></g:submitButton>
            </td>
            <td>
                <input type='reset' value='Reset' />
            </td>
        </tr>
        </tbody>
        </table>
    </g:form>
    </div>
</body>
</html>