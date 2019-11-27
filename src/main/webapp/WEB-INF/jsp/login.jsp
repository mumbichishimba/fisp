<%-- 
    Document   : login
    Created on : Nov 20, 2019, 8:55:46 PM
    Author     : Mumbi Chishimba
--%>

<%@include file="fragments/requirements.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h2>Hello World!</h2>
        <form class="user" method="POST" action="${contextPath}/login">
            <table border="1">
                <tbody>
                    <tr>
                        <th>Username</th>
                        <td><input name="username" type="text" class="form-control form-control-user" placeholder="Enter Username..."></td>
                    </tr>
                    <tr>
                        <th>Password</th>
                        <td><input name="password" type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password"></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Login" /></td>
                    </tr>
                </tbody>
            </table>
        </form>

    </body>
</html>
