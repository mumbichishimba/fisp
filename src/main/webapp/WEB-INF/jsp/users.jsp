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
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Users</h2>
        
        <a href="${contextPath}/adduser">+ Add User</a><br/><br/>
        <table border="1">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Date of Birth</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Username</th>
                    <th>Role</th>
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
                        <td>${u.userrole}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>


    </body>
</html>
