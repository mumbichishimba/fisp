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
        <title>Cooperatives</title>
        <%@include file="fragments/css.jsp" %>
    </head>
    <body>
        <%@include file="fragments/header.jsp" %>
        <br>
        &nbsp;
        <div class="panel panel-default">
            <div class="panel-heading">
              <h4><i class="fa fa-angle-right"></i>Co-operative </h4><br>
            </div>
            <div class="panel-body">
                <div class="showback">
                    
                    <div class="table-responsive">

                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
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
                        <a href="${contextPath}/addcooperative" class="btn btn-success"> Add Cooperative</a>
                    </div>
                </div>  

            </div>

        </div>

        <%@include file="fragments/footer.jsp" %>
        <%@include file="fragments/js.jsp" %>
    </body>
</html>
