<%@page import="java.util.List"%>
<%@page import="restaurant.business.TableBasedOrder"%>
<%@page import="restaurant.DB.OrderDB"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="\headerLogout.jsp"/>

    <div class="all-margin">
        <div class="row">
            <div class="col-lg-2 col-sm-12 col-xs-12">
                <h2>Host Page</h2>
            </div>
            <div class="col-lg-8 col-sm-12 col-xs-12">
                <div class="container">

                    <table class="wait table table-border table-responsive" border="1" align="center" >
                        <c:forEach var="table" items="${requestScope.alltables}" varStatus="tableCount">
                            <c:set var="fullTableOccured" value="true"></c:set>
                            <c:if test="${tableCount.first}">
                                <tr>
                                </c:if>
                                <c:forEach var="inactiveTable" items="${requestScope.inactiveTables}">
                                    <c:if test="${table.getTNumber()==inactiveTable}">    
                                    <c:set var="fullTableOccured" value="false" />
                                        <td> 
                                            <a href="order?action=updatetoActive&amp;tableNum=${inactiveTable}"><p id="${inactiveTable}" class="green" onclick="colorChange(${inactiveTable})">
                                                    <c:out value="${table.getTNumber()}"></c:out><sup><c:out value="${table.getCapacity()}"></c:out></sup>
                                                </p></a>
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
            </div>
            <div class="col-lg-2">

            </div>
        </div>
    </div>
</body>

<script type="text/javascript" src="js/scriptFile.js"></script>
<c:import url="\footer.jsp"/>


