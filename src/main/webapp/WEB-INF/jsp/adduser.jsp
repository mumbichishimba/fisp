<%-- 
    Document   : adduser
    Created on : Nov 20, 2019, 9:36:09 PM
    Author     : Mumbi Chishimba
--%>
<%@include file="fragments/requirements.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="fragments/css.jsp" %>
    </head>
    <body>
        <%@include file="fragments/header.jsp" %>
        <br>
        <div class="showback">
            <h4><i class="fa fa-angle-right"></i> Add User </h4>

            <table class="table table-responsive" style="width: 50%; min-width: 50%;">

                <tbody>
                    <tr>
                        <td>Firstname</td>
                        <td><input class="form-control" type="text" name="firstname" /></td>
                    </tr>
                    <tr>
                        <td>Othernames</td>
                        <td><input class="form-control" type="text" name="othernames" /></td>
                    </tr>
                    <tr>
                        <td>Lastname</td>
                        <td><input  class="form-control" type="text" name="lastname" /></td>
                    </tr>
                    <tr>
                        <td>Date of Birth</td>
                        <td><input class="form-control" type="date" name="dateofbirth" /></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td>
                            <select class="form-control" name="gender">
                                <option value="M">Male</option>
                                <option value="F">Female</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input class="form-control" type="text" name="address" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input class="form-control" type="email" name="email" /></td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td><input class="form-control" type="text" name="city" /></td>
                    </tr>
                    <tr>
                        <td>Username</td>
                        <td><input class="form-control" type="text" name="username" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input class="form-control" type="password" name="password" /></td>
                    </tr>
                    <tr>
                        <td>Password (Confirm)</td>
                        <td><input class="form-control" type="password" name="password_confirm" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"> <input class="btn btn-success" type="submit" value="Add" /> </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <%@include file="fragments/footer.jsp" %>
        <%@include file="fragments/js.jsp" %>
    </body>
</html>
