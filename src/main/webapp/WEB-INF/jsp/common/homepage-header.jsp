<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>Restaurant Tinder</title>
    <c:url var="bootstrapCss" value="/css/bootstrap.min.css" />
    <c:url var="siteCss" value="/css/site.css" />

    <c:url var="jQueryJs" value="/js/jquery.min.js" />
    <c:url var="jqValidateJs" value="/js/jquery.validate.min.js" />
    <c:url var="jqvAddMethJs" value="/js/additional-methods.min.js" />
    <c:url var="jqTimeagoJs" value="/js/jquery.timeago.js" />
    <c:url var="popperJs" value="/js/popper.min.js" />
    <c:url var="bootstrapJs" value="/js/bootstrap.min.js" />

    <link rel="stylesheet" type="text/css" href="${bootstrapCss}">
    <link rel="stylesheet" type="text/css" href="${siteCss}">

    <script src="${jQueryJs}"></script>
    <script src="${jqValidateJs}"></script>
    <script src="${jqvAddMethJs}"></script>
    <script src="${jqTimeagoJs}"></script>
    <script src="${popperJs}"></script>
    <script src="${bootstrapJs}"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $("time.timeago").timeago();

            $("#logoutLink").click(function(event) {
                $("#logoutForm").submit();
            });

            var pathname = window.location.pathname;
            $("nav a[href='" + pathname + "']").parent().addClass("active");

        });
    </script>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div style="display: flex">
        <a class="navbar-brand" href="#">
            <c:url var="homePageHref" value="/" />
            <c:url var="imgSrc" value="/img/fork-heart.png" />
            <a href="${homePageHref}"><img src="${imgSrc}" class="img-fluid" style="height: 70px;" /></a>
        </a>
        <h1>Restaurant Tinder</h1>
    </div>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <ul class="navbar-nav ml-auto">
            <c:choose>
                <c:when test="${empty currentUser}">
                    <c:url var="newUserHref" value="/users/new" />
                    <li class="nav-item"><a class="nav-link" href="${newUserHref}">Sign Up</a></li>
                    <c:url var="loginHref" value="/login" />
                    <li class="nav-item"><a class="nav-link" href="${loginHref}">Log In</a></li>
                </c:when>
                <c:otherwise>
                    <c:url var="logoutAction" value="/logout" />
                    <form id="logoutForm" action="${logoutAction}" method="POST">
                        <input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
                    </form>
                    <li class="nav-item"><a id="logoutLink" href="#">Log Out</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div>
</nav>

<div class="container">