<%-- 
    Document   : Register
    Created on : 18-Jun-2016, 14:50:35
    Author     : USER
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="\headerMainPage.jsp"/>
<div class="container">
    <form action="user" class="form-signin form-signin-size " method="post">
        <div class="login-form">
            <hr noshade width=100% size="30">
            <h2 class="form-signin-heading">User Register Form</h2>
            <c:if test="${msg!=null}">
                <p style="color: red"><c:out value="${msg}"></c:out></p>
                </c:if>    
                  
            <h4>Please enter your details to register</h4><br>
            <input type="hidden" name="action" value="register">
            <div class="row">
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <label>User Name</label>
                </div>

                <div class="col-md-7 col-sm-9 col-xs-9">
                    <input type="text" name="userName" class="form-control" placeholder="User Name" required autofocus>                
                </div>
                <div class="col-md-2 col-sm-3 col-xs-3">
                    <img style="width: 70px; height: 50px;" src="images/key.png" alt="online keyboard">
                </div>
            </div><div class="row">
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <label>Email</label>
                </div>

                <div class="col-md-7 col-sm-9 col-xs-9">
                    <input type="text" name="email" class="form-control" placeholder="Email Address" required autofocus>                
                </div>
                <div class="col-md-2 col-sm-3 col-xs-3">
                    <img style="width: 70px; height: 50px;" src="images/key.png" alt="online keyboard">
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <label>First Name</label>
                </div>

                <div class="col-md-7 col-sm-9 col-xs-9">
                    <input type="text" name="firstName" class="form-control" placeholder="first name" required autofocus>                
                </div>
                <div class="col-md-2 col-sm-3 col-xs-3">
                    <img style="width: 70px; height: 50px;" src="images/key.png" alt="online keyboard">
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <label>Last Name</label>
                </div>

                <div class="col-md-7 col-sm-9 col-xs-9">
                    <input type="text" name="lastName" class="form-control" placeholder="Last Name" required autofocus>                
                </div>
                <div class="col-md-2 col-sm-3 col-xs-3">
                    <img style="width: 70px; height: 50px;" src="images/key.png" alt="online keyboard">
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <label>Password</label>
                </div>

                <div class="col-md-7 col-sm-9 col-xs-9">
                    <input type="password" name="password" class="form-control" placeholder="Password" required autofocus>                
                </div>
                <div class="col-md-2 col-sm-3 col-xs-3">
                    <img style="width: 70px; height: 50px;" src="images/key.png" alt="online keyboard">
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <label>Confirm Password</label>
                </div>

                <div class="col-md-7 col-sm-9 col-xs-9">
                    <input type="password" name="confirmPassword" class="form-control" placeholder="Password" required autofocus>                
                </div>
                <div class="col-md-2 col-sm-3 col-xs-3">
                    <img style="width: 70px; height: 50px;" src="images/key.png" alt="online keyboard">
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-7">
                    <button class="btn btn-lg btn-primary btn-default" type="submit">Register</button>
                    
                </div>
            </div><br>
            <p>&COPY; Copyright 2016 Fadi Mohsen </p>
        </div>
    </form>

</div>
    

<c:import url="\footer.jsp"/>

