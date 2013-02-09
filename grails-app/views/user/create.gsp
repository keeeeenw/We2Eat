<%--
  Created by IntelliJ IDEA.
  User: zixiao
  Date: 2/8/13
  Time: 11:32 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
html>
  <head>
    <meta name="layout" content="main" />
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'login.css')}" type="text/css">
    <title>Create Account</title>
  </head>
  <body>
    <div class="body">
      <h1>Create an Account</h1>
      <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
      </g:if>
      <div id="login_link">
        <p><a href="${g.createLink(action: 'login')}">Back to login page</a></p>
      </div>
      <g:form action="makeNew" method="post" >
        <div class="dialog">
          <table>
            <tbody>


            <tr class="prop">
              <td class="name">
                <label for="firstName">First Name:</label>
              </td>
              <td>
                <input type="text" id="firstName" name="firstName"/>
              </td>
            </tr>


            <tr class="prop">
              <td class="name">
                <label for="lastName">Last Name:</label>
              </td>
              <td>
                <input type="text" id="lastName" name="lastName"/>
              </td>
            </tr>


            <tr class="prop">
              <td class="name">
                <label for="company">Company:</label>
              </td>
              <td>
                <input type="text" id="company" name="company"/>
              </td>
            </tr>


              <tr class="prop">
                <td class="name">
                  <label for="username">Username:</label>
                </td>
                <td>
                  <input type="text" id="username" name="username"/>
                </td>
              </tr>

            <tr class="prop">
              <td class="name">
                <label for="zipcode">Zip Code:</label>
              </td>
              <td>
                <input type="text" id="zipcode" name="zipcode"/>
              </td>
            </tr>

              <tr class="prop">
                <td class="name">
                  <label for="password">Password:</label>
                </td>
                <td>
                  <input type="password" id="password1" name="password1"/>
                </td>
              </tr>

              <tr class="prop">
                <td class="name">
                  <label for="password">Password (again):</label>
                </td>
                <td>
                  <input type="password" id="password2" name="password2"/>
                </td>
              </tr>


            </tbody>
          </table>
        </div>
        <div class="buttons">
          <span class="button">
            <input class="save" type="submit" value="Submit" />
          </span>
        </div>
      </g:form>
    </div>
  </body>
</html>
