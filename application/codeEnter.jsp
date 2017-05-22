<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="\headerMainPage.jsp"/>

<div class="container">
    <form action="Busboy.jsp" class="form-signin form-signin-size ">
        <div class="login-form">
            <hr noshade width=100% size="30">
            <h2 class="form-signin-heading">User Code</h2>
            <h4>Please enter your code to continue</h4><br>
            
            <div class="row">
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <label>Code</label>
                </div>

                <div class="col-md-9 col-sm-9 col-xs-9">
                    <input type="text" name="userCode" class="form-control" placeholder="Code" required autofocus>                
                </div>
                
            </div>
            <br>
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-7">
                    <button class="btn btn-lg btn-primary btn-default" type="submit">Submit</button>
                </div>
            </div><br>
            <p>&COPY; Copyright 2016 Fadi Mohsen </p>
        </div>
    </form>

</div>


<c:import url="\footer.jsp"/>