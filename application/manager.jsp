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
                <table class="table table-responsive double-border" border="1" align="center" >
                <tr>
                    <td><a href="" class="thumbnail">1<sup>8</sup></a></td>
                    <td><a href="" class="thumbnail">2<sup>4</sup></a></td>
                    <td><a href="" class="thumbnail">3<sup>4</sup></a></td>
                    <td><a href="" class="thumbnail">4<sup>4</sup></a></td>
                    <td><a id="request" href="" class="thumbnail">5<sup>4</sup><p class="thumbnail">7:00:02</p></a>
                    </td>
                    <td><a href="" class="thumbnail">6<sup>4</sup></a></td>
                    <td><a href="" class="thumbnail">7<sup>4</sup></a></td>
                    <td><a href="" class="thumbnail">8<sup>4</sup></a></td>
                    <td><a href="" class="thumbnail">9<sup>4</sup></a></td>    
                </tr>
                <tr>
                    <td><a href="" class="thumbnail">10<sup>6</sup></a></td>
                    <td><a href="" class="thumbnail">12<sup>4</sup></a></td>
                    <td><a href="" class="thumbnail">13<sup>4</sup></a></td>
                    <td><a href="" class="thumbnail">14<sup>4</sup></a></td>
                    <td><a href="" class="thumbnail">16<sup>4</sup></a></td>
                    <td><a href="" class="thumbnail">18<sup>4</sup></a></td>
                    <td><a href="" class="thumbnail">20<sup>4</sup></a></td>
                    <td><a href="" class="thumbnail">22<sup>4</sup></a></td>
                    <td><a href="" class="thumbnail">24<sup>4</sup></a></td>
                </tr>
                <tr>
                    <td><a id="request" href="" class="thumbnail">11<sup>6</sup><p class="thumbnail">4:30:05</p></a>    
                    </td>
                    <td><a href="" class="thumbnail">12<sup>4</sup></a></td>
                    <td><a href="" class="thumbnail">15<sup>4</sup></a></td>
                    <td><a href="" class="thumbnail">17<sup>4</sup></a></td>
                    <td><a href="" class="thumbnail">19<sup>4</sup></a></td>
                    <td><a href="" class="thumbnail">21<sup>4</sup></a></td>
                    <td><a href="" class="thumbnail">23<sup>4</sup></a></td>
                    <td><a href="" class="thumbnail">25<sup>4</sup></a></td> 
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="" class="thumbnail">26<sup>2</sup></a></td>
                    <td><a href="" class="thumbnail">27<sup>2</sup></a></td>
                    <td><a href="" class="thumbnail">28<sup>2</sup></a></td>
                    <td><a href="" class="thumbnail">29<sup>2</sup></a></td>
                    <td><a href="" class="thumbnail">30<sup>2</sup></a></td>
                    <td></td>
                    <td></td>

                </tr>
                <tr>
                    <td><a id="time-elapse" href="" class="thumbnail"><h2>20</h2></a> </td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
                
            </div>
            <div class="col-lg-2">
                
            </div>
        </div>    
<%@include file="\footer.jsp" %>