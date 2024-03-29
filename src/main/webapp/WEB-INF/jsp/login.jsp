<%-- 
    Document   : login
    Created on : Nov 20, 2019, 8:55:46 PM
    Author     : Mumbi Chishimba
--%>

<%@include file="fragments/requirements.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fisp System</title>
    <!-- Core CSS - Include with every page -->
    <link href="${contextPath}/assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="${contextPath}/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="${contextPath}/assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
   <link href="${contextPath}/assets/css/style.css" rel="stylesheet" />
    <link href="${contextPath}/assets/css/main-style.css" rel="stylesheet" />

    </head>

    <body class="body-Login-back">

        <div class="container">

            <div class="row">
                <div class="col-md-4 col-md-offset-4 text-center logo-margin ">

                </div>
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">                  
                        <div class="panel-heading">
                            <h3 class="panel-title">Please Sign In</h3>
                        </div>
                        <div class="panel-body">
                            <form class="user" method="POST" action="${contextPath}/login">
                                <fieldset>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Username" name="username" type="text" autofocus>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                    </div>
                                    <div class="checkbox">
                                        <c:if test="${not empty param.error}">  
                                            <font color="red">Invalid username or password</font>
                                        </c:if>
                                    </div>
                                    <!-- Change this to a button or input when using this as a form -->
                                    <button type="submit" class="btn btn-lg btn-success btn-block">Login</a>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Core Scripts - Include with every page -->
        <script src="${contextPath}/assets/plugins/jquery-1.10.2.js"></script>
        <script src="${contextPath}/assets/plugins/bootstrap/bootstrap.min.js"></script>
        <script src="${contextPath}/assets/plugins/metisMenu/jquery.metisMenu.js"></script>

    </body>

</html>
