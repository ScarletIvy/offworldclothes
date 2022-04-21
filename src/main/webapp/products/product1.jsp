<%--
  Created by IntelliJ IDEA.
  User: Ivy
  Date: 2/20/2022
  Time: 6:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../includes/contentType.jsp"/>
<html>
<head>
    <title>OffWorld Clothes - Shirt</title>
    <jsp:include page="../includes/head.jsp"/>
</head>

<body>
<jsp:include page="../includes/header.jsp"/>
<jsp:include page="../includes/nav.jsp"/>
<div class="container">
<h2 class="row-2 text-center">Shirt</h2>
<div class="row">
    <img class="col img-fluid" src="../images/shirt.png" alt="shirt">
    <div class="container col">
        <p class="row">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ut eros laoreet, suscipit enim
            eu, congue risus. Vivamus convallis leo sed lacus sagittis, vitae condimentum enim vulputate. In
            habitasse platea dictumst. Suspendisse vehicula sagittis ornare. Nulla euismod vitae libero quis luctus.
            Donec non scelerisque sapien. Suspendisse rhoncus, ante id ullamcorper rhoncus, quam augue rhoncus eros, ut
            elementum tellus lorem id ipsum. Duis eget tristique ante. Maecenas fermentum facilisis elit, a iaculis odio
            sagittis eget. In vel tempus ante, ut auctor nisl. Mauris erat nibh, tincidunt nec tortor sit amet, mattis
            consequat arcu. Maecenas diam risus, pharetra eu lobortis eget, luctus volutpat justo.</p>
<form class="form-horizontal row">
    <fieldset>
        <div class="form-group">
            <label class="col-md-4 control-label" for="Sizes">Sizes</label>
            <div class="col-md-4">
                <select id="Sizes" name="Sizes" class="form-control">
                    <option value="S">Small</option>
                    <option value="M">Medium</option>
                    <option value="L">Large</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="addToCart"></label>
            <div class="col-md-4">
                <button id="addToCart" name="addToCart" class="btn btn-primary">Add To Cart</button>
            </div>
        </div>
    </fieldset>
</form>
    </div>
</div>
</div>

<jsp:include page="../includes/footer.jsp"/>
</body>
</html>
