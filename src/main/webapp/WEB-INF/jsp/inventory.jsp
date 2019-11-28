<%-- 
    Document   : pageone
    Created on : 26-Oct-2019, 23:19:06
    Author     : CHILIKWEM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="fragments/requirements.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users</title>
        <%@include file="fragments/css.jsp" %>
    </head>
    <body id="page-top">
        <%@include file="fragments/header.jsp" %>

        <br>
        
        <div class="showback">
            <h4><i class="fa fa-angle-right"></i> Implements </h4>
            <div class="table-responsive">
               
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Type</th>
                            <th>Suppler</th>
                            <th>Quantity </th>
                            <th>Bar code</th>

                        </tr>
                    </thead>
                    <tbody>

                        <c:forEach items="${inventory}" var="a">
                            <tr>
                                <td>${a.name}</td>
                                <td>${a.type}</td>
                                <td>${a.supplier}</td>
                                <td>${a.quantity} ${a.quantitytype}</td>
                                <td>${a.barcodenumber}</td>

                            </tr>
                        </c:forEach>

                    </tbody>
                </table>
                 <a class="btn btn-success" href="${contextPath}/addinventory">Add Inventory Item</a>
                <br>
            </div>
        </div>



        <%@include file="fragments/footer.jsp" %>
        <%@include file="fragments/js.jsp" %>
    </body>
</html>
