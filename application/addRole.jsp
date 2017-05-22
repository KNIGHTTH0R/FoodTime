<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="\headerLogout.jsp"/>

<div class="container">
    <form action="user" class="form-signin form-signin-size " method="post">
        <div class="login-form">
            <hr noshade width=100% size="30">
            <h2 class="form-signin-heading"> Role page</h2><br>
            <c:if test="${msg!=null}">
                <p><c:out value="${msg}"></c:out></p>
            </c:if>   
            
            <input type="hidden" name="action" value="addRole">
            <div class="row">
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <label >Role Name</label>
                </div>

                <div class="col-md-7 col-sm-9 col-xs-9">
                    <select id="role" name="roleName" style="width:250px;">
                        <option>Receptionist</option>
                        <option>Shift Manager</option>
                        <option>Cashier</option>
                        <option>Executive Chef</option>
                    </select>               
                </div>
                
            </div><br>
            
            
            <div class="row">
                <div class="col-md-3">
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
