<%--
  Created by IntelliJ IDEA.
  User: zixiao
  Date: 2/9/13
  Time: 12:42 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta name="layout" content="main" />
  <title>Create Menu</title>
  <style type="text/css">
      #main {
          display: inline;
      }

      #main div{
          float: left;
          margin: 50px;
      }

      #form{
          width: 550px;
      }

      #chef{
          padding-top:100px;
      }
  </style>
</head>
<body>
    <div id="main">
    <div id="chef">
        <img src="${resource(dir: 'images/Added', file: 'CHEF.png')}" alt="CHEF"/>
    </div>
    <div id="form">
    <g:form name="menuForm" action="submitChefProfile">
        <table>
            <tbody>
            <tr>
              <td>
                  <label for="date">Date:</label>
              </td>
              <td>
                  <g:datePicker name="date" value="" precision="minute"
                          years="${(Calendar.getInstance().get(Calendar.YEAR)-70)..Calendar.getInstance().get(Calendar.YEAR)}"/>
              </td>
            </tr>
            <tr>
              <td>
                  <label for="nopeople">Number Of People:</label>
              </td>
              <td>
                  <g:textField name="nopeople" value=""/>
              </td>
            </tr>
            <tr>
              <td>
                  <label for="host">Provide Space:</label>
              </td>
              <td> <g:radioGroup name="host"
                                            labels="['Yes','No']"
                                            values="[1,2]">
                              ${it.label} ${it.radio}
                   </g:radioGroup>
              </td>
            </tr>
            <tr>
              <td>
                  <label for="theme">Food Theme:</label>
              </td>
              <td>
                  <g:textField name="theme" value=""/>
              </td>
            </tr>
            <tr>
              <td>
                  <label for="location">Location:</label>
              </td>
              <td>
                  <g:textField name="location" value=""/>
              </td>
            </tr>
            <tr>
              <td>
                  <label for="Organization">Organization: </label>
              </td>
              <td>
                  <g:textField name="organization" value=""/>
              </td>
            </tr>
            </tbody>
        <tr>
          <td>
          </td>
          <td>
              <g:submitButton name="submit" value="Create Feast"></g:submitButton>
          </td>
        </tr>
        </tbody>
        </table>
    </g:form>
    </div>
    </div>
</body>
</html>