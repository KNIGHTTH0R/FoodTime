
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:import url="\header.jsp"/>
        <div class="container">
            <div id ="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="3000">

                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                </ol>


                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="images/1.jpg" alt="..." class="img-rounded">
                        <div class="carousel-caption">
                            <h3>Burger</h3>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/2.jpg" alt="..." class="img-rounded">
                        <div class="carousel-caption">
                            <h3>Mocktails</h3>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/3.jpg" alt="..." class="img-rounded">
                        <div class="carousel-caption">
                            <h3>Drinks</h3>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/4.jpg" alt="..." class="img-rounded">
                        <div class="carousel-caption">
                            <h3>Desserts</h3>
                        </div>
                    </div>
                </div>



                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>

        </div>

        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                <div class="col-xs-4">
                    <a href="user?action=busboy" class="btn btn-primary btn-lg pull-left">BusBoy</a>
                </div>
                <div class="col-xs-4">
                    <a href="order?action=order" class="btn btn-primary btn-lg">Order</a>
                </div>
                <div class="col-xs-4">
                    <a href="contact.jsp" class="btn btn-primary btn-lg pull-right">Contact Us</a>
                </div>    
            </div>
            </div>
        </div>
        <script type="text/javascript" src="js/popup.js"></script>
    <c:import url="\footer.jsp"/>
