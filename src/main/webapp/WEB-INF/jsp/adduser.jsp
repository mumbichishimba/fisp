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
        <title>Add User</title>
        <%@include file="fragments/css.jsp" %>
    </head>
    <body>
        <%@include file="fragments/header.jsp" %>
        <br>
        <br>
        &nbsp;
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4><i class="fa fa-angle-right"></i> Add User </h4>
            </div>
            <div class="panel-body">
                <div class="showback">

                    <div style="width: 50%;">
                        <form method="POST" action="${contextPath}/adduser">
                            <div class="form-group">
                                <label for="firstname">Firstname</label>
                                <input type="text" class="form-control" id="firstname" name="firstname" placeholder="first name" required="">
                            </div>
                            <div class="form-group">
                                <label for="Othernames">Othernames</label>
                                <input type="text" class="form-control" id="Othernames" name="othername" placeholder="Other name" required="">
                            </div>
                            <div class="form-group">
                                <label for="Lastname">Lastname</label>
                                <input type="text" class="form-control" id="Lastname" name="lastname" placeholder="Last name" required="">
                            </div>
                            <div class="form-group">
                                <label for="DateofBirth">Date of Birth</label>
                                <input type="Date" class="form-control" id="DateofBirth" name="dateofbirth" placeholder="Date of Birth" required="">
                            </div>
                            <div class="form-group">
                                <label for="gender">Gender</label>
                                <select class="form-control" name="gender" id="gender" required="">
                                    <option value="M">Male</option>
                                    <option value="F">Female</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="Address">Address</label>
                                <input type="text" class="form-control" id="Address" name="address" placeholder="Address" required="">
                            </div>
                            <div class="form-group">
                                <label for="Email">Email</label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="Email" required="">
                            </div>
                            <div class="form-group">
                                <label for="City">City</label>
                                <input type="text" class="form-control" id="city" name="city" placeholder="City" required="">
                            </div>
                            <div class="form-group">
                                <label for="Username">Username</label>
                                <input type="text" class="form-control" id="username" name="username" placeholder="username" required="">
                            </div>
                            <div class="form-group">
                                <label for="cooperative">Co-operative</label>
                                <select class="form-control" name="cooperative" id="cooperative" required="">
                                    <c:forEach items="${cooperative}" var="c">
                                        <option value="${c.id}">${c.name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="Password"></label>
                                <input type="password" class="form-control" id="password" name="password" placeholder="password" required="">
                            </div>
                            <div class="form-group">
                                <label for="Passwordconfirm">Password (Confirm)</label>
                                <input type="password" class="form-control" id="passwordconfirm" name="password_confirm" placeholder="passwordconfirm" required="">
                            </div>

                            <div class="form-group">
                                <input type="submit" class="btn btn-success btn-block" value="Submit" />
                            </div>
                        </form>        
                    </div>

                </div>

            </div>

            <%@include file="fragments/footer.jsp" %>
            <%@include file="fragments/js.jsp" %>
    </body>
</html>
