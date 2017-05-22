<%@page import="restaurant.business.TableBasedOrder"%>
<%@page import="restaurant.DB.OrderDB"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="\headerLogout.jsp"/>

<body>

    <div class="all-margin">
        <div class="row">
            <div class="col-lg-2 col-sm-12 col-xs-12">
                <h2>Wait Staff Page</h2>
            </div>
            <div class="col-lg-8 col-sm-12 col-xs-12">
                <div class="container">

                    <table class="wait table table-border table-responsive" border="1" align="center" >
                        <c:forEach var="table" items="${requestScope.alltables}" varStatus="tableCount">
                            <c:set var="fullTableOccured" value="true"></c:set>
                            <c:if test="${tableCount.first}">
                                <tr>
                            </c:if>
                                <c:forEach var="responsibleActiveTable" items="${requestScope.relatedActiveTables}">
                                    <c:if test="${table.getTNumber()==responsibleActiveTable.getTNumber()}">
                                        <c:set var="fullTableOccured" value="false" />
                                        <td class="hoverid">
                                           
                                                <a href="#" ><p class="green" id="${responsibleActiveTable.getTNumber()}">
                                                        <c:out value="${responsibleActiveTable.getTNumber()}"></c:out><sup><c:out value="${responsibleActiveTable.getCapacity()}"></c:out> </sup>
                                                    </p></a>
                                                    <ul id="list" class="ulclass list-group-item list-unstyled">
                                                        <c:forEach var="activeOrder" items="${activetablesOrders}">
                                                        <c:if test="${responsibleActiveTable.getTNumber()==activeOrder.gettNumber()}">
                                                                    <c:forEach var="menu" items="${activeOrder.cartObject}">
                                                                        <li id="${menu.menuNumber}" onclick="remove(${menu.menuNumber})"><c:out value="${menu.menuItem}"></c:out>&nbsp;$<c:out value="${menu.amount}"></c:out></li>
                                                                    </c:forEach>
                                                        </c:if>
                                                        </c:forEach>                    
                                                    </ul>  
                                        </td>
                                    </c:if>
                                </c:forEach>    
                                <c:if test="${fullTableOccured==true}">
                                    <td id="${table.getTNumber()}">
                                        <div>
                                            <p class="cell-style" id="${table.getTNumber()}">
                                                ${table.getTNumber()}<sup>${table.getCapacity()}</sup>
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

<script>
    function remove(li){
        var ulList=document.getElementById(list);
        ulList.removeChild(li);
    }
</script>
<c:import url="\footer.jsp"/>


