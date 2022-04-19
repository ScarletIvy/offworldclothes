<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ivy
  Date: 2/12/2022
  Time: 10:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="includes/contentType.jsp"/>
<html>
<head>
    <title>OffWorld Clothes - Products</title>
    <jsp:include page="includes/head.jsp"/>
</head>

<body>
<jsp:include page="includes/header.jsp"/>
<jsp:include page="includes/nav.jsp"/>
<h2>Our Products</h2>
<div class="container">
    <div class="row">
    <c:forEach var="item" items="${items}">
        <div class="col"><a href="<c:url value="/viewProduct"/>"><img src="${item.imageURL}" alt="${item.name}"></a></div>
    </c:forEach>
    </div>
</div>
<jsp:include page="includes/footer.jsp"/>
</body>
</html>
