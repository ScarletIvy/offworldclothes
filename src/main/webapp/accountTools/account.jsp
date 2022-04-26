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
    <title>OffWorld Clothes - Account</title>
    <jsp:include page="../includes/head.jsp"/>
</head>

<body>
<jsp:include page="../includes/header.jsp"/>
<jsp:include page="../includes/nav.jsp"/>
<h2>Account</h2>
            <div class="col-md-4">
                <a href="${pageContext.request.contextPath}/editProfile"><button id="edit" type="submit" name="edit" class="btn btn-primary">Edit Profile</button></a>
            </div>
<br>
            <div class="col-md-4">
                <a href="${pageContext.request.contextPath}/pastOrders"><button id="orders" type="submit" name="orders" class="btn btn-primary">Past Orders</button></a>
            </div>
<jsp:include page="../includes/footer.jsp"/>
</body>
</html>
