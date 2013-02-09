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
  <style type="text/css">
      #role div{
          float: left;
          display: inline;
          padding: 100px;
      }
      #role div:first-child {
          margin-left: 200px;

      }
      #main h1{
          text-align: center;
          font-size: 5em;
      }
  </style>
</head>
<body>
    <div id="login_hdr">
      <div id="hello">
        <span id="logout">
          <!--<a href="${g.createLink(controller: 'user', action: 'logout')}">
            Logout
          </a> -->
        </span>
      </div>
    </div>
    <div id="main">
        <h1>I am</h1>
        <div id="role">
            <div>
                <a href="${g.createLink(controller: 'togetherweeat', action:'createEaterProfile')}"><img src="${resource(dir: 'images/Added', file: 'EATER.png')}" alt="Easter"/></a>
                <h2>Eater</h2>
            </div>
            <div>
                <a href="${g.createLink(controller: 'togetherweeat', action:'createChefProfile')}"><img src="${resource(dir: 'images/Added', file: 'CHEF.png')}" alt="CHEF"/></a>
                <h2>Chef</h2>
            </div>
        </div>
    </div>
  </body>
</html>