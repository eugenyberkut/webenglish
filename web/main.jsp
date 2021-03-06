<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Главная</title>
    <meta charset="utf-8">
    <link type="text/css" rel="stylesheet" href="styles/style.css"/>
    <link type="text/css" rel="stylesheet" href="styles/skin.css"/>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.jcarousel.min.js"></script>
    <script type="text/javascript" src="js/initSlider.js"></script>
    <!--[if IE 6]>
    <script src="js/ie6-transparency.js"></script>
    <script>DD_belatedPNG.fix('#header img, #featured-section h2, #circles img, #frontpage-sidebar .read-more, .blue-bullets li, #sidebar .sidebar-button, #project-content .read-more, .more-link, #contact-form .submit, .jcarousel-skin-tango .jcarousel-next-horizontal, .jcarousel-skin-tango .jcarousel-prev-horizontal, #commentform .submit');</script>
    <style>body {
        behavior: url("styles/ie6-hover-fix.htc");
    }</style>
    <link rel="stylesheet" href="styles/ie6.css"/>
    <![endif]-->
    <!--[if IE 7]>
    <link rel="stylesheet" href="styles/ie7.css"/><![endif]-->
    <!--[if IE 8]>
    <link rel="stylesheet" href="styles/ie8.css"/><![endif]-->


</head>
<body class="home">
<div id="wrap">
    <jsp:include page="WEB-INF/header.jsp"/>

    <div id="featured-section">
        <h2>Yin and Yang</h2>
        <div id="circles"><a href="lesson.html"> <img class="first" src="images/circle-red.png"/> <img src="images/circle-pink.png"/>
            <img src="images/circle-orange.png"/> <img src="images/circle-yellow.png"/></a></div>



        <!--end circles-->
        <div id="image-slider">
            <ul id="mycarousel" class="jcarousel-skin-tango">

                <c:forEach var="gallery" items="${galleries}">
                    <li><a href="gallery.html"><img width="280" height="190" src="picture/${gallery.image}" alt=""/></a>
                    </li>
                </c:forEach>

            </ul>
        </div>
        <!--end image-slider-->
    </div>
    <!--end featured-section-->
    <%--<c:forEach items="${trainings}" var="training">--%>
    <%--<div id="frontpage-main">--%>
        <%--<div id="frontpage-content">--%>

            <%--<br><h3>${training.title}</h3>--%>

            <%--<br><ul class="blue-bullets">--%>
                <%--<li>${training.text}</li>--%>

            <%--</ul>--%>

        <%--</div>--%>
        <%--</c:forEach>--%>
        <%--<!--end frontpage-content-->--%>

    <%--</div>--%>
    <!--end frontpage-main-->
    <div id="footer">
        <p class="copyright"><img src="images/logo.png" width="50" height="25" />Чтоб связаться с Нами, перейдите на страницу - <a href="contact.html">"Контакты"</a></p>
        <p><div id="google_translate_element"></div><script type="text/javascript">
        function googleTranslateElementInit() {
            new google.translate.TranslateElement({pageLanguage: 'ru', layout: google.translate.TranslateElement.InlineLayout.HORIZONTAL, multilanguagePage: true}, 'google_translate_element');
        }
        </script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script></p>
    </div>
    <!--end footer-->

</div>
<!--end wrap-->
</body>
<div class="cache-images"><img src="images/red-button-bg.png" width="0" height="0" alt=""/><img
        src="images/black-button-bg.png" width="0" height="0" alt=""/></div>
<!--end cache-images-->
</html>