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
          padding: 50px;
      }
      #role div:first-child {
          margin-left: 70px;

      }

      #role div:last-child {
          padding-top:50px;
      }

      #main h1{
          text-align: center;
          font-size: 5em;
          font: noteworthy;
      }

      #main h2{
          text-align: center;
      }

      #iam{
          margin-top: 30px;
          margin-left: 50px;
          margin-top: 50px;
          padding-left: 300px;
      }

  </style>
</head>
<body>
    <div id="main">
        <div id="iam"><a href="${g.createLink(controller: 'togetherweeat', action:'createEaterProfile')}"><img src="${resource(dir: 'images/Added', file: 'I_AM.png')}" alt="I_AM"/></a></div>
        <div id="role">
            <div>
                <a href="${g.createLink(controller: 'togetherweeat', action:'createEaterProfile')}"><img src="${resource(dir: 'images/Added', file: 'EATER_text.png')}" alt="Easter"/></a>
            </div>
            <div>
                <a href="${g.createLink(controller: 'togetherweeat', action:'createChefProfile')}"><img src="${resource(dir: 'images/Added', file: 'CHEF_text.png')}" alt="CHEF"/></a>
            </div>
        </div>
    </div>
  </body>
</html>