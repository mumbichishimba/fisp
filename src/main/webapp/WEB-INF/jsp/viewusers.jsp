<%-- 
    Document   : users
    Created on : Nov 20, 2019, 9:26:01 PM
    Author     : Mumbi Chishimba
--%>

<%@include file="fragments/requirements.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users</title>
        <%@include file="fragments/css.jsp" %>
    </head>
    <body>
        <%@include file="fragments/header.jsp" %>

        <br/>
        <br>
        &nbsp;
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4><i class="fa fa-angle-right"></i> Farmers </h4>
            </div>
            <div class="panel-body">

                <div class="showback">

                    <table class="table" id="dataTable">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Address</th>
                                <th>Date of Birth</th>
                                <th>Email</th>
                                <th>Gender</th>
                                <th>Username</th>
                                <th>Cooperative</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${users}" var="u">
                                <tr>
                                    <td>${u.firstname} ${u.othername} ${u.lastname}</td>
                                    <td>${u.address}</td>
                                    <td>${u.dateofbirth}</td>
                                    <td>${u.email}</td>
                                    <td>${u.gender}</td>
                                    <td>${u.username}</td>
                                    <td>${u.cooperative.name}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                    <a href="${contextPath}/adduser" class="btn btn-success"> Add Farmer</a><br/><br/>
                </div>

            </div>

        </div>

        <%@include file="fragments/footer.jsp" %>
        <%@include file="fragments/js.jsp" %>
        <script type="text/javascript">

            $(document).ready(function () {
                $('#dataTable').DataTable();
            });
        </script>
    </body>
</html>
