<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Это интересно</title>
    <meta charset="utf-8">
    <link type="text/css" rel="stylesheet" href="styles/style.css" />
    <!--[if IE 6]>
    <script src="js/ie6-transparency.js"></script>
    <script>DD_belatedPNG.fix('#header img, #featured-section h2, #circles img, #frontpage-sidebar .read-more, .blue-bullets li, #sidebar .sidebar-button, #project-content .read-more, .more-link, #contact-form .submit, .jcarousel-skin-tango .jcarousel-next-horizontal, .jcarousel-skin-tango .jcarousel-prev-horizontal, #commentform .submit');</script>
    <style>body { behavior: url("styles/ie6-hover-fix.htc"); }</style>
    <link rel="stylesheet" href="styles/ie6.css" />
    <![endif]-->
    <!--[if IE 7]><link rel="stylesheet" href="styles/ie7.css" /><![endif]-->
    <!--[if IE 8]><link rel="stylesheet" href="styles/ie8.css" /><![endif]-->
    <link rel="stylesheet" type="text/css" href="styles/base.css">
</head>
<body class="page">
<div id="wrap">
    <div id="header">
        <div id="nav">
            <ul class="menu">
                <li class="current_page_item"><a href="index.html">Главная</a></li>
                <li><a href="teacher.html">Преподаватели</a></li>
                <li><a href="study.html">Расписание</a></li>
                <li><a href="">Обучение</a>
                    <ul class="sub-menu">
                        <li><a href="interesting.html">Это интересно</a></li>
                        <li><a href="slang.html">Сленг</a></li>
                        <li><a href="lazy_person.html">Для лентяев</a></li>
                    </ul>
                <li><a href="command.html">Наша команда</a></li>
                <li><a href="reviews.html">Отзывы</a></li>
                <li><a href="contact.html">Контакты</a></li>
            </ul>
        </div>
        <!--end nav-->
    </div>
    <!--end header-->
    <div class="page-headline">Это интересно</div>


    <div id="main">
        <div id="content">
            <%--  Извлекаем из БД  Таблица: interesting --%>
            <c:forEach items="${interestings}" var="interesting">
                <h3 class="post-title"><c:out value="<a href=\"${interesting.url}\">${interesting.title}</a>" escapeXml="false" /></h3>
                <c:out value="<img src=\"picture/${interesting.picture}\"" escapeXml="false" />
                <p><c:out value="${interesting.text}" escapeXml="false" /></p>
                <div class="post-line"></div>
            </c:forEach>

            <ul class="post-navigation">
                <li><a href="slang.html">&laquo; Сленг</a></li>

                <li><a href="lazy_person.html">&laquo; Для лентяев</a></li>
            </ul>
        </div>
        <!--end content-->

    </div>






</div>

</body>
<div class="cache-images"><img src="images/red-button-bg.png" width="0" height="0" alt="" /><img src="images/black-button-bg.png" width="0" height="0" alt="" /></div>
<!--end cache-images-->
</html>