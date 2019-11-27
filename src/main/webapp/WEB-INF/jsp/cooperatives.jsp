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
        
        <a href="${contextPath}/addcooperative">+ Add Cooperative</a> &nbsp; <a href="${contextPath}/home">Home</a> <br/><br/>
        <table border="1">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Date Created</th>
                    <th>Location</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${cooperatives}" var="u">
                    <tr>
                        <td>${u.name}</td>
                        <td>${u.datecreated}</td>
                        <td>${u.location}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>


    </body>
</html>
