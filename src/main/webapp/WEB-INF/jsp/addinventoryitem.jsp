<%-- 
    Document   : addinventoryitem
    Created on : Nov 4, 2019, 2:07:15 PM
    Author     : Mumbi Chishimba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="fragments/requirements.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add inventory item</title>
        <%@include file="fragments/css.jsp" %>
    </head>
    <body id="page-top">
        <%@include file="fragments/header.jsp" %>

        <br>
        <br>
        &nbsp;
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4><i class="fa fa-angle-right"></i> Add Inventory Item </h4><br>
            </div>
            <div class="panel-body">
                <div class="showback">

                    <div style="width: 50%;">
                        <form method="POST" action="${contextPath}/addinventory"> 
                            <div class="form-group">
                                <label for="barcode">Barcode Number</label>
                                <input type="text" class="form-control" id="barcode" name="barcode" placeholder="Barcode Number" required="">
                            </div>
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" class="form-control" id="name" name="name" placeholder="Name" required="">
                            </div>
                            <div class="form-group">
                                <label for="quantity">Quantity</label>
                                <input type="number" class="form-control" id="quantity" name="quantity" placeholder="Quantity" required="">
                            </div>
                            <div class="form-group">
                                <label for="quantitytype">Quantity Type</label>
                                <select class="form-control" name="quantitytype" id="quantitytype">
                                    <option value="KG">KG</option>
                                    <option value="Mitres">Metres</option>
                                    <option value="Count">Count</option>
                                    <option value="Litres">Litres</option>
                                </select>
                            </div> 
                            <div class="form-group">
                                <label for="supplier">Supplier</label>
                                <input type="text" class="form-control" id="supplier" name="supplier" placeholder="Supplier" required="">
                            </div>
                            <div class="form-group">
                                <label for="available">Available</label>
                                <select class="form-control" name="available" id="available" required="">
                                    <option value="1">Yes</option>
                                    <option value="2">No</option>
                                </select>

                            </div>
                            <div class="form-group">
                                <label for="itemtype">Item Type</label>
                                <select class="form-control" name="itemtype" id="itemtype">
                                    <option value="Consumable">Consumable</option>
                                    <option value="Not Consumable">Not Consumable</option>
                                    <option value="Planting">Planting</option>
                                    <option value="Animal">Animal</option>
                                    <option value="Tools">Tools</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="submit" class="btn btn-success btn-block" value="Submit" />
                            </div>
                        </form>
                    </div>
                </div>

            </div>

        </div>

        <%@include file="fragments/footer.jsp" %>
        <%@include file="fragments/js.jsp" %>

    </body>
</html>
