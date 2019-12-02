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
        <title>Inventory</title>
        <%@include file="fragments/css.jsp" %>
    </head>
    <body id="page-top">
        <%@include file="fragments/header.jsp" %>

        <br>
        &nbsp;
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4><i class="fa fa-angle-right"></i> Implements </h4>
            </div>
            <div class="panel-body">
                <div class="showback">

                    <div class="table-responsive">

                        <form action="${contextPath}/senttofarmer" id="form">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>&nbsp;</th>
                                        <th>Name</th>
                                        <th>Type</th>
                                        <th>Suppler</th>
                                        <th>Quantity </th>
                                        <th>Bar code</th>
                                        <th>Available</th>

                                    </tr>
                                </thead>
                                <tbody>

                                    <c:forEach items="${inventory}" var="a">
                                        <tr>
                                            <td> <c:if test="${a.available==false}"><i class="fa fa-check" aria-hidden="true"></i></c:if> <c:if test="${a.available}"> <input id="impid" type="checkbox" name="impid" value="${a.id}" /></c:if></td>
                                            <td>${a.name}</td>
                                            <td>${a.type}</td>
                                            <td>${a.supplier}</td>
                                            <td>${a.quantity} ${a.quantitytype}</td>
                                            <td>${a.barcodenumber}</td>
                                            <td><c:if test="${a.available==false}">No</c:if> <c:if test="${a.available}"> Yes </c:if></td>
                                        </tr>
                                    </c:forEach>

                                </tbody>
                            </table>
                            <input type="hidden" name="result" id="result" value="result" />
                            <a class="btn btn-success" href="${contextPath}/addinventory">Add Inventory Item</a>
                            <a class="btn btn-primary pull-right" onclick="dostuff();">Send to farmer</a>
                        </form>
                        <br>
                    </div>
                </div>
            </div>

        </div>




        <%@include file="fragments/footer.jsp" %>
        <%@include file="fragments/js.jsp" %>
        <script type="text/javascript">
            var array = [];
            var result = "";
            function dostuff() {
                console.log("Drifter");
                result = "";
                array = [];
                $('input:checkbox[name=impid]:checked').each(function ()
                {
                    array.push($(this).val());
                });
                result = JSON.stringify(array);
                $("#result").val(result);
                console.log($("#result").val());
                $("#form").submit();
            }


        </script>
    </body>
</html>
