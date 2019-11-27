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
    </head>
    <body id="page-top">


        <a href="${contextPath}/addcooperative">+ Add Cooperative</a> &nbsp; <a href="${contextPath}/home">Home</a> <br/><br/>
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Inventory</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <a class="btn btn-success" href="${contextPath}/addinventory">Add Inventory Item</a>
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
                </div>
            </div>
        </div>


        <a href="home">Home</a>

    </body>
</html>
