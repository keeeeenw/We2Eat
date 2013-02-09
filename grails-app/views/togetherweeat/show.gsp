<%--
  Created by IntelliJ IDEA.
  User: zixiao
  Date: 2/8/13
  Time: 11:46 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta name="layout" content="main" />
  <title>Together We Eat!</title>
</head>
<body>
    <div id="login_hdr">
      <div id="hello">
        <span>${user.firstName}</span>
        <span id="logout">
          <a href="${g.createLink(controller: 'user', action: 'logout')}">
            Logout
          </a>
        </span>
      </div>
    </div>
    <div id="main">
        <h1>I am</h1>
        <a href="${g.createLink(controller: 'togetherweeat', action:'createChefProfile')}">Chef</a>
        <a href="${g.createLink(controller: 'togetherweeat', action:'createEaterProfile')}">Eater</a>
    </div>
  </body>
</html>