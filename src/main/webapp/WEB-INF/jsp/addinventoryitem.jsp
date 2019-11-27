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
    </head>
    <body id="page-top">

        <div class="card mb-4">
            <div class="card-header">
                Add Inventory Item
            </div>
            <div class="card-body">
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
                        <label for="quantitytype">Quantity Type (Change to select)</label>
                        <input type="text" class="form-control" id="quantitytype" name="quantitytype" placeholder="Quantity Type" required="">
                    </div>
                    <div class="form-group">
                        <label for="supplier">Supplier</label>
                        <input type="text" class="form-control" id="supplier" name="supplier" placeholder="Supplier" required="">
                    </div>
                    <div class="form-group">
                        <label for="available">Available (Change to select)</label>
                        <select class="form-control" name="available" id="available" required="">
                            <option value="1">Yes</option>
                            <option value="2">No</option>
                        </select>

                    </div>
                    <div class="form-group">
                        <label for="itemtype">Item Type (Select)</label>
                        <input type="text" class="form-control" id="itemtype" name="itemtype" placeholder="Item Type" required="">
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-success btn-block" value="Submit" />
                    </div>
                </form>
            </div>
        </div>

    </body>
</html>
