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
                <form method="POST" action="${contextPath}/addcooperative">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="Name" required="">
                    </div>
                    <div class="form-group">
                        <label for="datecreated">Date Created</label>
                        <input type="date" class="form-control" id="datecreated" name="datecreated" placeholder="Date Created" required="">
                    </div>
                    <div class="form-group">
                        <label for="location">Location</label>
                        <input type="text" class="form-control" id="location" name="location" placeholder="Location" required="">
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-success btn-block" value="Submit" />
                    </div>
                </form>
            </div>
        </div>

    </body>
</html>
