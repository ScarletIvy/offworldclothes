<%--
  Created by IntelliJ IDEA.
  User: Ivy
  Date: 2/12/2022
  Time: 10:49 PM
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="includes/contentType.jsp"/>
<html>
<head>
    <title>OffWorld Clothes - Home</title>
    <jsp:include page="includes/head.jsp"/>
</head>

    <body>
        <jsp:include page="includes/header.jsp"/>
        <jsp:include page="includes/nav.jsp"/>
        <div class="container">
        <h2 class="row">Clothes for trans people, by trans people</h2>
        <div id="carouselSlidesOnly" class="carousel slide row justify-content-center" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="${pageContext.request.contextPath}/images/shirt.png" class="d-block w-10" alt="shirt">
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/images/hoodie.png" class="d-block w-10" alt="hoodie">
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/images/pants.png" class="d-block w-10" alt="pants">
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/images/skirt.png" class="d-block w-10" alt="skirt">
                </div>
            </div>
        </div>
        </div>
        <jsp:include page="includes/footer.jsp"/>
    </body>
</html>
