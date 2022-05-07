<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ivy
  Date: 2/12/2022
  Time: 10:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../includes/contentType.jsp"/>
<html>
<head>
    <title>OffWorld Clothes - Past Orders</title>
    <jsp:include page="../includes/head.jsp"/>
</head>
<body>
<jsp:include page="../includes/header.jsp"/>
<jsp:include page="../includes/nav.jsp"/>
<h2>Past Orders</h2>
<c:choose>
    <c:when test="${pastOrders.size() == 0}">
        <h3>No Past Orders</h3>
    </c:when>
    <c:otherwise>
        <div class="row">
            <div class="col">
                <p><strong>Order Total:</strong></p>
                <ul class="list-unstyled">
                    <c:forEach var="order" items="${pastOrders}">
                        <li>${order.total}</li>
                    </c:forEach>
                </ul>
            </div>
            <div class="col">
                <p><strong>Shipping Address:</strong></p>
                <ul class="list-unstyled">
                    <c:forEach var="order" items="${pastOrders}">
                        <li>${order.shippingAddress}</li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </c:otherwise>
</c:choose>
<jsp:include page="../includes/footer.jsp"/>
</body>
</html>
