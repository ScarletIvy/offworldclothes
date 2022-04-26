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
<form class="form-horizontal" action="editProfile" method="post">
    <fieldset>
        <div class="form-group">
            <div class="col-md-4">
                <button id="edit" type="submit" name="edit" class="btn btn-primary">Edit Profile</button>
            </div>
        </div>
    </fieldset>
</form>
<form class="form-horizontal" action="pastOrders" method="post">
    <fieldset>
        <div class="form-group">
            <div class="col-md-4">
                <button id="orders" type="submit" name="orders" class="btn btn-primary">Past Orders</button>
            </div>
        </div>
    </fieldset>
</form>
<jsp:include page="../includes/footer.jsp"/>
</body>
</html>
