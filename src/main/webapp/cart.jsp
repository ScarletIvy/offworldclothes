<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: Ivy
  Date: 2/12/2022
  Time: 10:53 PM
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="includes/contentType.jsp"/>
<html>
<head>
    <title>OffWorld Clothes - cart</title>
    <jsp:include page="includes/head.jsp"/>
</head>

<body>
<jsp:include page="includes/header.jsp"/>
<jsp:include page="includes/nav.jsp"/>
<h2>Cart</h2>
<form class="form-horizontal" action="checkout" method="post">
<c:choose>
    <c:when test="${cart.size() == 0}">
        <h3>Your cart is empty</h3>
    </c:when>
    <c:otherwise>
        <h3>Your cart is not empty</h3>
    <div class="form-group">
        <label class="col-md-4 control-label" for="checkout"></label>
        <div class="col-md-4">
            <button id="checkout" type="submit" name="checkout" class="btn btn-primary">Check Out</button>
        </div>
    </div>
    </c:otherwise>
</c:choose>
<jsp:include page="includes/footer.jsp"/>
</body>
</html>
