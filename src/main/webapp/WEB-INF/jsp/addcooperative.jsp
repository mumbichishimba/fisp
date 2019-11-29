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
        <div class="panel panel-info">
            <div class="panel-heading">
                <h4><i class="fa fa-angle-right"></i> Add Cooperative </h4><br>
            </div>
            <div class="panel-body">
                <div class="showback">
                    
                    <div class="table-responsive">

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
                    <div>

                    </div>

                </div>

                <%@include file="fragments/footer.jsp" %>
                <%@include file="fragments/js.jsp" %>
                </body>
                </html>
