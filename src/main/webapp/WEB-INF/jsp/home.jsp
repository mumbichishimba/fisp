<%-- 
    Document   : home
    Created on : Nov 20, 2019, 9:14:38 PM
    Author     : Mumbi Chishimba
--%>
<%@include file="fragments/requirements.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title> 
        <%@include file="fragments/css.jsp" %>
    </head>
    <body>
        <%@include file="fragments/header.jsp" %>
        <br>
        <h2> Home </h2>


        <div class="row">
            <!--quick info section -->
            <div class="col-lg-3">
                <div class="alert alert-danger text-center">
                    <i class="fa fa-calendar fa-3x"></i>&nbsp;<b>${usertotal} </b>Total users <br/>&nbsp; <br/>

                </div>
            </div>
            <div class="col-lg-3">
                <div class="alert alert-success text-center">
                    <i class="fa  fa-beer fa-3x"></i>&nbsp;<b>${cooperativesTotal} </b>Cooperatives <br/>&nbsp; <br/>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="alert alert-info text-center">
                    <i class="fa fa-rss fa-3x"></i>&nbsp;<b>${available}</b> available implements <br/>&nbsp; <br/>

                </div>
            </div>
            <div class="col-lg-3">
                <div class="alert alert-warning text-center">
                    <i class="fa  fa-pencil fa-3x"></i>&nbsp;<b>${given} </b>given implements <br/>&nbsp; <br/>
                </div>
            </div>
            <!--end quick info section -->
        </div>
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Implements Issued
                </div>
                <div class="panel-body">
                    <style>
                        canvas {
                            -moz-user-select: none;
                            -webkit-user-select: none;
                            -ms-user-select: none;
                        }
                    </style>
                    <div id="container" style="width: 75%;">
                        <canvas id="canvas"></canvas>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="fragments/footer.jsp" %>
        <%@include file="fragments/js.jsp" %>

        <script src="${contextPath}/chart/Chart.min.js"></script>
        <script src="${contextPath}/chart/utils.js"></script>
        <script>
            var values = ${tabvalues};
            var color = Chart.helpers.color;
            var barChartData = {
                labels: ${lables},
                datasets: [{
                        label: 'Totals',
                        backgroundColor: color(window.chartColors.lime).alpha(1).rgbString(),
                        borderColor: window.chartColors.green,
                        borderWidth: 1,
                        data: ${tabvalues}
                    }
                ]

            };

            window.onload = function () {
                var ctx = document.getElementById('canvas').getContext('2d');
                window.myBar = new Chart(ctx, {
                    type: 'bar',
                    data: barChartData,
                    options: {
                        responsive: true,
                        legend: {
                            position: 'bottom'
                        },
                        title: {
                            display: true,
                            text: 'Implements'
                        },
                        scales: {
                            yAxes: [{
                                    display: true,
                                    ticks: {
                                        beginAtZero: true,
                                        stepValue: 5
                                    }
                                }]
                        }
                    }
                });
            };
        </script>

    </body>
</html>
