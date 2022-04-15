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
    <title>OffWorld Clothes - Signup</title>
    <jsp:include page="includes/head.jsp"/>
</head>

<body>
<jsp:include page="includes/header.jsp"/>
<jsp:include page="includes/nav.jsp"/>
<h2>Signup</h2>
<form class="form-horizontal" action="/signupaction" method="post">
        <div class="form-group">
            <label class="col-md-4 control-label" for="username">Username</label>
            <div class="col-md-4">
                <input id="username" name="username" type="text" placeholder="Username" class="form-control input-md" required="">

            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="firstName">First Name</label>
            <div class="col-md-4">
                <input id="firstName" name="firstName" type="text" placeholder="First Name" class="form-control input-md" required="">
            </div>
        </div>
        <div class="form-group">
             <label class="col-md-4 control-label" for="lastName">Last Name</label>
             <div class="col-md-4">
                <input id="lastName" name="lastName" type="text" placeholder="Last Name" class="form-control input-md" required="">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="email">Email</label>
            <div class="col-md-4">
                <input id="email" name="email" type="text" placeholder="Email" class="form-control input-md" required="">

            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="address">Street Address</label>
            <div class="col-md-4">
                <input id="address" name="address" type="text" placeholder="Street Address" class="form-control input-md" required="">

            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="City">City</label>
            <div class="col-md-4">
                <input id="City" name="City" type="text" placeholder="City" class="form-control input-md" required="">

            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="state">State</label>
            <div class="col-md-4">
                <input id="state" name="state" type="text" placeholder="State" class="form-control input-md" required="">

            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="zip">Zip Code</label>
            <div class="col-md-4">
                <input id="zip" name="zip" type="text" placeholder="Zip Code" class="form-control input-md" required="">

            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="password">Password</label>
            <div class="col-md-4">
                <input id="password" name="password" type="password" placeholder="Password" class="form-control input-md" required="">

            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="repeatPassword">Repeat Password</label>
            <div class="col-md-4">
                <input id="repeatPassword" name="repeatPassword" type="password" placeholder="Repeated Password" class="form-control input-md" required="">
                <span class="help-block">Passwords must match</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="signup"></label>
            <div class="col-md-4">
                <button type="submit" id="signup" name="signup" class="btn btn-primary">Sign Up</button>
            </div>
        </div>
</form>
<jsp:include page="includes/footer.jsp"/>
</body>
</html>
