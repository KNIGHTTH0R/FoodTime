<%@page import="restaurant.business.RTable"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@include file="\headerLogout.jsp" %>
        <div class="row all-margin">
            <div class="col-lg-4 col-sm-12 col-xs-12">
                <div class="pull-left left-margin ">
                    <h4>Manager Page</h4><br>
                    <a  href="user?action=addUser">Add user</a><br>
                    <a class="pull-left" href="addRole.jsp">Add Role</a><br>
                    <a class="pull-left" href="user?action=addUserRole">Add User/Role</a><br>
                    <a class="pull-left" href="addTable.jsp">Add Table</a><br>
                    <a class="pull-left" href="user?action=addUserTable">Add user/Table</a><br>
                    <a class="pull-left" href="table?action=registerTable">Register Table</a><br>
                    <a class="pull-left" href="order?action=deleteOrders">Delete All Orders</a><br>
                </div>
            </div>
            <div class="col-lg-6 col-sm-12 col-xs-12">
                <table id="manager_table" class="wait table table-border table-responsive" border="1" align="center" >
                        <c:forEach var="table" items="${requestScope.alltables}" varStatus="tableCount">
                            <c:set var="fullTableOccured" value="true"></c:set>
                            <c:if test="${tableCount.first}">
                                <tr>
                                </c:if>
                                <c:forEach var="activeTable" items="${requestScope.activeTables}">
                                    <c:if test="${table.getTNumber()==activeTable}">    
                                    <c:set var="fullTableOccured" value="false" />
                                        <td> 
                                            <p id="${activeTable}" class="green">
                                                <c:out value="${table.getTNumber()}"></c:out><sup><c:out value="${table.getCapacity()}"></c:out></sup>
                                            </p>
                                            
                                        </td>
                                    </c:if>    
                                </c:forEach>   
                                <c:if test="${fullTableOccured==true}">
                                    <td id="${table.getTNumber()}">
                                        <div>
                                            <p class="cell-style" id="${table.getTNumber()}">
                                                <c:out value="${table.getTNumber()}"></c:out><sup><c:out value="${table.getCapacity()}"></c:out></sup>
                                            </p>
                                        </div>
                                    </td>
                                </c:if> 
                                <c:if test="${tableCount.count % 6 ==0}">
                                </tr>
                                <c:if test="${!tableCount.last}">
                                    <tr>
                                    </c:if>
                                </c:if>   
                            </c:forEach>
                    </table>
                
            </div>
            <div class="col-lg-2">
                
            </div>
        </div>    
<%@include file="\footer.jsp" %>