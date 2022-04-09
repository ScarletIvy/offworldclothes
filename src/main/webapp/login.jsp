<%--
  Created by IntelliJ IDEA.
  User: Ivy
  Date: 2/12/2022
  Time: 10:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="includes/contentType.jsp"/>
<html>
<head>
    <title>OffWorld Clothes - Login</title>
    <jsp:include page="includes/head.jsp"/>
</head>

<body>
<jsp:include page="includes/header.jsp"/>
<jsp:include page="includes/nav.jsp"/>
<h2>Login</h2>
<form class="form-horizontal" action="loginaction" method="post">
    <fieldset>
        <div class="form-group">
            <label class="col-md-4 control-label" for="username">Username</label>
            <div class="col-md-4">
                <input id="username" name="username" type="text" placeholder="Username" class="form-control input-md" required="">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="password">Password</label>
            <div class="col-md-4">
                <input id="password" name="password" type="password" placeholder="Password" class="form-control input-md" required="">

            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="login"></label>
            <div class="col-md-4">
                <button id="login" type="submit" name="login" class="btn btn-primary">Login</button>
            </div>
        </div>
    </fieldset>
</form>
<jsp:include page="includes/footer.jsp"/>
</body>
</html>
