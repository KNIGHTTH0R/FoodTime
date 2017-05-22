<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="\headerMainPage.jsp"/>

<div class="container">
    <form action="order" class="form-signin form-signin-size " method="post">
        <div class="login-form">
            <hr noshade width=100% size="30">
            <h2 class="form-signin-heading">Table Registration Form</h2>
            <c:if test="${msg!=null}">
                <p><c:out value="${msg}"></c:out></p>
            </c:if>    
            <input type="hidden" name="action" value="addTable">
            <div class="row">
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <label>Table Number</label>
                </div>

                <div class="col-md-7 col-sm-9 col-xs-9">
                    <input type="text" name="TableNumber" class="form-control" required autofocus>                
                </div>
                <div class="col-md-2 col-sm-3 col-xs-3">
                    <img style="width: 70px; height: 50px;" src="images/key.png" alt="online keyboard">
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <label>Capacity</label>
                </div>

                <div class="col-md-7 col-sm-9 col-xs-9">
                    <input type="text" name="capacity" class="form-control" required autofocus>                
                </div>
                <div class="col-md-2 col-sm-3 col-xs-3">
                    <img style="width: 70px; height: 50px;" src="images/key.png" alt="online keyboard">
                </div>
            </div><br>
            <div class="row">
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <label>Location</label>
                </div>

                <div class="col-md-7 col-sm-9 col-xs-9">
                    <input type="text" name="location" class="form-control" required autofocus>                
                </div>
                <div class="col-md-2 col-sm-3 col-xs-3">
                    <img style="width: 70px; height: 50px;" src="images/key.png" alt="online keyboard">
                </div>
            </div><br>
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-3">
                    <button class="btn btn-lg btn-primary btn-default" type="submit">Add Table</button>
                    
                </div>
                <div class="col-md-6">
                    
                </div>    
            </div><br>
            <p>&COPY; Copyright 2016 Fadi Mohsen </p>
        </div>
    </form>

</div>


<c:import url="\footer.jsp"/>