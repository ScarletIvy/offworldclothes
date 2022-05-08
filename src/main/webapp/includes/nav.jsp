<%--
  Created by IntelliJ IDEA.
  User: Ivy
  Date: 2/12/2022
  Time: 10:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/home">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarsToggle">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarsToggle">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/products">Products</a></li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/contact">Contact</a></li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/about">About</a></li>
                <c:choose>
                    <c:when test="${loggedIn == true}">
                        <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/logout">Logout</a></li>
                        <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/account">Account</a></li>
                        <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/cart">Cart</a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/login">Login</a></li>
                        <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/signup">Signup</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
</div>
<div class="px-5">