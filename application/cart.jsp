<%@page import="restaurant.business.Cart"%>
<%@ page import="restaurant.DB.CartDB" %>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="\headerMainPage.jsp"/>

<div class="container vert-offset-top-4">
<h1>Your cart</h1>

<table class="table">
  <tr>
    <th>Quantity</th>
    <th>Description</th>
    <th>Price</th>
    <th>Amount</th>
    <th></th>
  </tr>


<c:forEach var="item" items="${theCart.items}">
  <tr>
    <td>
      <form action="order" method="post">
          <input type="hidden" name="action" value="updateItem">  
        <input type="hidden" name="menuNum" 
               value="<c:out value='${item.menu.menuNum}'/>">
        <input type=text name="quantity" 
               value="<c:out value='${item.quantity}'/>" id="quantity">
        <input class="btn btn-default" type="submit" value="Update">
      </form>
    </td>
    <td><c:out value='${item.menu.menuItem}'/></td>
    <td><c:out value="${item.menu.getMenuPriceCurrencyFormat()}"></c:out></td>
    <td><c:out value="${item.getTotalCurrencyFormat()}"></c:out></td>
    <td>
      <form action="order" method="post">
          <input type="hidden" name="action" value="deleteItem">
        <input type="hidden" name="menuNum" 
               value="<c:out value='${item.menu.menuNum}'/>">
        <input type="hidden" name="quantity" 
               value="0">
        <input class="btn btn-default" type="submit" value="Remove Item">
      </form>
    </td>
  </tr>
</c:forEach>
</table>

<p><b>To change the quantity</b>, enter the new quantity 
      and click on the Update button.</p>
  
<form action="order" method="post">
  <input type="hidden" name="action" value="shop">
  <input class="btn btn-default" type="submit" value="Continue Shopping">
</form>
 <% Cart cart=(Cart)session.getAttribute("theCart");
                            String orderId=cart.getOrderID();
                               Double totalamount=CartDB.calculateTotalAmount(orderId);%>
                              

<form action="" method="post">
<!--      <input type="hidden" name="action" value="checkout">-->
  <input id="popUpLink" class="btn btn-default" type="Button" value="Checkout">
                    <div id="popup">
                        <div id="content">
                            <p>Your Bill !!!!!!!!</p>
                             <p><%= totalamount %></p>
                            <h5>Confirm Checkout</h5>
                            
                        <button id="popuptext"><a href="order?action=checkout&AMP;confirm=yes">YES</a></button>
                        <button id="popuptext"><a href="order?action=checkout&AMP;confirm=no">NO</a></button>
                            
                        </div>
                    </div>
</form>
<script type="text/javascript" src="js/checkoutpopup.js"></script> 
</div>
<c:import url="/footer.jsp"/>