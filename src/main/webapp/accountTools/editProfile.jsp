<%--
  Created by IntelliJ IDEA.
  User: Ivy
  Date: 2/12/2022
  Time: 10:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../includes/contentType.jsp"/>
<html>
<head>
    <title>OffWorld Clothes - Edit Profile</title>
    <jsp:include page="../includes/head.jsp"/>
</head>

<body>
<jsp:include page="../includes/header.jsp"/>
<jsp:include page="../includes/nav.jsp"/>
<h2>Edit Profile</h2>
<form class="form-horizontal">
    <fieldset>
        <div class="form-group">
            <p class="col-md-4">Current UserName:</p>
            <p class="col-md-4">${loggedUser.userName}</p>
            <label class="col-md-4 control-label" for="username">New Username</label>
            <div class="col-md-4">
                <input id="username" name="username" type="text" placeholder="New Username" class="form-control input-md" required="">
            </div>
        </div>
        <div class="form-group">
            <p class="col-md-4">Current First Name:</p>
            <p class="col-md-4">${loggedUser.firstName}</p>
            <label class="col-md-4 control-label" for="firstName">New First Name</label>
            <div class="col-md-4">
                <input id="firstName" name="firstName" type="text" placeholder="New First Name" class="form-control input-md" required="">
            </div>
        </div>
        <div class="form-group">
            <p class="col-md-4">Current Last Name:</p>
            <p class="col-md-4">${loggedUser.lastName}</p>
            <label class="col-md-4 control-label" for="lastName">Last Name</label>
            <div class="col-md-4">
                <input id="lastName" name="lastName" type="text" placeholder="Last Name" class="form-control input-md" required="">
            </div>
        </div>
        <div class="form-group">
            <p class="col-md-4">Current Email:</p>
            <p class="col-md-4">${loggedUser.email}</p>
            <label class="col-md-4 control-label" for="email">New Email</label>
            <div class="col-md-4">
                <input id="email" name="email" type="text" placeholder="New Email" class="form-control input-md" required="">

            </div>
        </div>
        <div class="form-group">
            <p class="col-md-4">Current Street Address:</p>
            <p class="col-md-4">${loggedUser.streetAddress}</p>
            <label class="col-md-4 control-label" for="address">New Street Address</label>
            <div class="col-md-4">
                <input id="address" name="address" type="text" placeholder="New Street Address" class="form-control input-md" required="">

            </div>
        </div>
        <div class="form-group">
            <p class="col-md-4">Current City:</p>
            <p class="col-md-4">${loggedUser.city}</p>
            <label class="col-md-4 control-label" for="City">New City</label>
            <div class="col-md-4">
                <input id="City" name="City" type="text" placeholder="New City" class="form-control input-md" required="">

            </div>
        </div>
        <div class="form-group">
            <p class="col-md-4">Current State:</p>
            <p class="col-md-4">${loggedUser.state}</p>
            <label class="col-md-4 control-label" for="state">New State</label>
            <div class="col-md-4">
                <input id="state" name="state" type="text" placeholder="New State" class="form-control input-md" required="">

            </div>
        </div>
        <div class="form-group">
            <p class="col-md-4">Current Zip Code:</p>
            <p class="col-md-4">${loggedUser.zipCode}</p>
            <label class="col-md-4 control-label" for="zip">New Zip Code</label>
            <div class="col-md-4">
                <input id="zip" name="zip" type="text" placeholder="New Zip Code" class="form-control input-md" required="">

            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="currentPassword">Current Password</label>
            <div class="col-md-4">
                <input id="currentPassword" name="currentPassword" type="password" placeholder="Current" class="form-control input-md" required="">

            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="password">New Password</label>
            <div class="col-md-4">
                <input id="password" name="password" type="password" placeholder="New Password" class="form-control input-md" required="">

            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="repeatPassword">Repeat New Password</label>
            <div class="col-md-4">
                <input id="repeatPassword" name="repeatPassword" type="password" placeholder="Repeated New Password" class="form-control input-md" required="">
                <span class="help-block">Passwords must match</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="complete"></label>
            <div class="col-md-4">
                <button id="complete" name="complete" class="btn btn-primary">Complete Edits</button>
            </div>
        </div>
    </fieldset>
</form>
<jsp:include page="../includes/footer.jsp"/>
</body>
</html>
