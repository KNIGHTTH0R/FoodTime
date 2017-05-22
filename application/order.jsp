<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="\headerMainPage.jsp"/>
<div class="row top-margin">
    <div class="col-lg-3 col-md-3 col-sm-2">

    </div>
    <div class="container col-lg-6 col-md-6 col-sm-8 col-xs-12">

        <div class=" center-div">
            <div class="width">
                <div class="list-group">
                    <ul>
                        <li style="color:white;" class="list-group-item">1. Read To Order</li>
                        <li class="list-group-item"><a href="cart.jsp">2. Menu</a></li>
                        <li class="list-group-item"><a href="order?action=addtocart&AMP;menuNum=1">3. Water</a></li>

                        <li class="list-group-item"><a href="order?action=addtocart&AMP;menuNum=2">4. Bread</a></li>
                        <li class="list-group-item"><a href="order?action=addtocart&AMP;menuNum=3">5. Silverware</a></li>
                        <li class="list-group-item"><a href="order?action=addtocart&AMP;menuNum=4">6. Napkins</a></li>

                        <li class="list-group-item dropdown-submenu">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="" role="button">7.Non-Alcoholic<span><img src="images\list-arrow-img.gif"></span></a>
                            <ul class="pull-right dropdown-menu" role="menu">
                                <li class="list-group-item"><a href="order?action=addtocart&AMP;menuNum=5">1. Pepsi</a></li>
                                <li class="list-group-item"><a href="order?action=addtocart&AMP;menuNum=6">2. Juice</a></li>

                            </ul>
                        </li>                         
                        <li class="list-group-item dropdown-submenu">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="" role="button">8. Alcoholic<span><img src="images\list-arrow-img.gif"></span></a>
                            <ul class="pull-right dropdown-menu" role="menu">
                                <li class="list-group-item"><a href="order?action=addtocart&AMP;menuNum=7">1. Vodka</a></li>
                                <li class="list-group-item"><a href="order?action=addtocart&AMP;menuNum=8">2. Beer</a></li>

                            </ul>
                        </li>
                        <li class="list-group-item"><a href="order?action=addtocart&AMP;menuNum=9">9. Deserts</a></li>
                        <li style="color:white;" class="list-group-item">10. Do Not Disturb</li>
                        <li style="color:white;" class="list-group-item">11. Manager</li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
    <div class="col-lg-3 col-md-3 col-sm-2">


    </div>
</div>

<c:import url="\footer.jsp"/>