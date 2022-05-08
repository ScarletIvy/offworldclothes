<%--
  Created by IntelliJ IDEA.
  User: Ivy
  Date: 2/20/2022
  Time: 6:40 PM
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="../includes/contentType.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>OffWorld Clothes - Skirt</title>
    <jsp:include page="../includes/head.jsp"/>
</head>

<body>
<jsp:include page="../includes/header.jsp"/>
<jsp:include page="../includes/nav.jsp"/>
<div class="container">
    <h2 class="row-2 text-center">Skirt</h2>
    <div class="row">
        <img class="col img-fluid" src="${pageContext.request.contextPath}/images/skirt.png" alt="skirt">
        <div class="container col">
            <p class="row">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ut eros laoreet, suscipit enim
                eu, congue risus. Vivamus convallis leo sed lacus sagittis, vitae condimentum enim vulputate. In
                habitasse platea dictumst. Suspendisse vehicula sagittis ornare. Nulla euismod vitae libero quis luctus.
                Donec non scelerisque sapien. Suspendisse rhoncus, ante id ullamcorper rhoncus, quam augue rhoncus eros, ut
                elementum tellus lorem id ipsum. Duis eget tristique ante. Maecenas fermentum facilisis elit, a iaculis odio
                sagittis eget. In vel tempus ante, ut auctor nisl. Mauris erat nibh, tincidunt nec tortor sit amet, mattis
                consequat arcu. Maecenas diam risus, pharetra eu lobortis eget, luctus volutpat justo.</p>
            <form class="form-horizontal row" action="${pageContext.request.contextPath}/addToCart" method="post">
                <fieldset>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="size">Sizes</label>
                        <div class="col-md-4">
                            <select id="size" name="size" class="form-control size">
                                <option value="S">Small</option>
                                <option value="M">Medium</option>
                                <option value="L">Large</option>
                            </select>
                        </div>
                    </div>
                    <br>
                    <p>$1.00</p>
                    <input type="hidden" id="name" name="name" class="name" value="Skirt">
                    <input type="hidden" id="price" name="price" class="price" value="1">
                    <input type="hidden" id="img" name="img" class="img" value="${pageContext.request.contextPath}/images/skirt.png">
                    <div class="form-group">
                        <div class="col-md-4">
                            <c:choose>
                                <c:when test="${loggedIn == true}">
                                    <button id="add" type="submit" name="add" class="btn btn-primary">Add To Cart</button>
                                </c:when>
                                <c:otherwise>
                                    <p>Must be logged in to add to cart</p>
                                </c:otherwise>
                            </c:choose>
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
