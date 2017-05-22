<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="\headerLogout.jsp"/>

<div class = "container all-margin">
    <div class="tableBlock">
         <c:if test="${msg != null}">
            <p><c:out value="${msg}" /></p>
            </c:if>
        <form action="table" method="post">
              <input type="hidden" name="action" value="registertable">
                   
                  <div class="form-group">
                    <label>Register the following TableNumber:</label>
                    <br>
                    <select name="table_number">
                       <c:forEach var="temp" items="${tableNumList}" >
                           <option value="${temp}"><c:out value="${temp}"/></option>
                       </c:forEach>
                    </select>
                  </div>
                  <div>
                    <input type="submit" value="Register">
                  </div>

        </form>
        <br>
        <div>
            <a href="manager.jsp">Back to Manager Page</a>
        </div>
        <div>
           
        </div>
    </div>
</div>
<c:import url="\footer.jsp"/>

