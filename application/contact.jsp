<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="\headerMainPage.jsp"/>
<div class="container">
    <form action="user" class="form-signin form-signin-size " method="post">
        <div class="login-form">
            <hr noshade width=100% size="30">
            <h2 class="form-signin-heading">Contact Us</h2>
            <c:if test="${msg!=null}">
                <h5>Your Message has been submitted successfully!!!!!!</h5>
            </c:if>    
            
            <h4>Please fill out the form !</h4><br>
            <input type="hidden" name="action" value="contact">
            <div class="row">
                <div class="col-md-2 col-sm-12 col-xs-12">
                    <label>Name&nbsp;*</label>
                </div>
                <div class="col-md-10 col-sm-12 col-xs-12">
                    <input type="text" name="Name" class="form-control" required autofocus>                
                </div>
            </div><br>

            <div class="row">
                <div class="col-md-2 col-sm-12 col-xs-12">
                    <label>Email&nbsp;*</label>
                </div>
                <div class="col-md-10 col-sm-12 col-xs-12">
                    <input type="text" name="email" class="form-control" placeholder="Email Address" required autofocus>                
                </div>
            </div><br>

            <div class="row">
                <div class="col-md-2 col-sm-12 col-xs-12">
                    <label>Message&nbsp;*</label>
                </div>
                <div class="col-md-10 col-sm-12 col-xs-12">
                    <textarea name="message" class="form-control" placeholder="Enter your message here..." required autofocus ></textarea>                
                </div>
            </div><br>

            <div class="row">
                <div class="col-md-2">
                </div>
                <div class="col-md-3">
                    <button class="btn btn-lg btn-primary btn-default" type="submit">Submit</button>
                </div>
                <div class="col-md-6">
                </div>    
            </div><br>
            <p>&COPY; Copyright 2016 Fadi Mohsen </p>
        </div>
    </form>

</div>

<c:import url="\footer.jsp"/>