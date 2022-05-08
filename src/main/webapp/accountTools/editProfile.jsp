<%--
  Created by IntelliJ IDEA.
  User: Ivy
  Date: 2/12/2022
  Time: 10:51 PM
  To change this template use File | Settings | File Templates.
--%>
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
<form class="form-horizontal" action="${pageContext.request.contextPath}/editaction" method="post">
    <fieldset>
        <div class="form-group">
            <p><strong>Current UserName:</strong> ${loggedUser.userName}</p>
            <label class="col-md-4 control-label" for="username"><strong>New Username:</strong></label>
                <input id="username" name="username" type="text" placeholder="New Username" class="form-control input-md" required="">
        </div>
        <div class="form-group">
            <p><strong>Current First Name:</strong> ${loggedUser.firstName}</p>
            <label class="col-md-4 control-label" for="firstName"><strong>New First Name:</strong></label>
                <input id="firstName" name="firstName" type="text" placeholder="New First Name" class="form-control input-md" required="">
        </div>
        <div class="form-group">
            <p><strong>Current Last Name:</strong> ${loggedUser.lastName}</p>
            <label class="col-md-4 control-label" for="lastName"><strong>Last Name:</strong></label>
                <input id="lastName" name="lastName" type="text" placeholder="Last Name" class="form-control input-md" required="">
        </div>
        <div class="form-group">
            <p><strong>Current Email:</strong> ${loggedUser.email}</p>
            <label class="col-md-4 control-label" for="email"><strong>New Email:</strong></label>
                <input id="email" name="email" type="text" placeholder="New Email" class="form-control input-md" required="">
        </div>
        <div class="form-group">
            <p><strong>Current Street Address:</strong> ${loggedUser.streetAddress}</p>
            <label class="col-md-4 control-label" for="address"><strong>New Street Address:</strong></label>
                <input id="address" name="address" type="text" placeholder="New Street Address" class="form-control input-md" required="">
        </div>
        <div class="form-group">
            <p><strong>Current City:</strong> ${loggedUser.city}</p>
            <label class="col-md-4 control-label" for="City"><strong>New City:</strong></label>
                <input id="City" name="City" type="text" placeholder="New City" class="form-control input-md" required="">
        </div>
        <div class="form-group">
            <p><strong>Current State:</strong> ${loggedUser.state}</p>
            <label class="col-md-4 control-label" for="state"><strong>New State:</strong></label>
                <input id="state" name="state" type="text" placeholder="New State" class="form-control input-md" required="">
        </div>
        <div class="form-group">
            <p><strong>Current Zip:</strong> ${loggedUser.zipCode}</p>
            <label class="col-md-4 control-label" for="zip"><strong>New Zip Code:</strong></label>
                <input id="zip" name="zip" type="text" placeholder="New Zip Code" class="form-control input-md" required="">
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="currentPassword"><strong>Current Password:</strong></label>
                <input id="currentPassword" name="currentPassword" type="password" placeholder="Current" class="form-control input-md" required="">
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="password"><strong>New Password:</strong></label>
                <input id="password" name="password" type="password" placeholder="New Password" class="form-control input-md" required="">
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="repeatPassword"><strong>Repeat New Password:</strong></label>
                <input id="repeatPassword" name="repeatPassword" type="password" placeholder="Repeated New Password" class="form-control input-md" required="">
                <span class="help-block">Passwords must match</span>
        </div>
        <div class="alert col-md-4 alert-danger" role="alert">
            Warning: Editing your profile will cause past orders to be unviewable on this site
        </div>
        <div class="form-group">
            <div class="col-md-4">
                <button type="submit" id="complete" name="complete" class="btn btn-primary">Complete Edits</button>
            </div>
        </div>
    </fieldset>
</form>
<jsp:include page="../includes/footer.jsp"/>
</body>
</html>
