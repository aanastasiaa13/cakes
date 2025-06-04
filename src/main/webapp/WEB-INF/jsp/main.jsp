<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1">
    <title>Tortikov</title>
    <link rel="icon"
          href="<c:url value="/images/logo.svg"/>">

    <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100..900;1,100..900&display=swap"
          rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT"
          crossorigin="anonymous">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

    <link type="text/css"
          rel="stylesheet"
          href="<c:url value="/css/styles.css"/>">
    <link type="text/css"
          rel="stylesheet"
          href="<c:url value="/css/main.css"/>">
</head>
<body>
<header class="_container">
    <a href="<c:url value="/tortikov/main"/>">
        <img src="<c:url value="/images/logo.svg"/>"
             alt="Tortikov">
    </a>
    <nav>
        <ul>
            <li class="mr-3">
                <a class="link"
                   href="#">
                    Главная
                </a>
            </li>
            <li class="mr-3">
                <a class="link"
                   href="#cakes">
                    Торты
                </a>
            </li>
            <li>
                <a class="link"
                   href="#contact">
                    Контакты
                </a>
            </li>
        </ul>
    </nav>
    <div class="flex">
        <div class="icon-container mr-1"
             onclick="location.href='<c:url value="/tortikov/cart"/>'">
            <i class="bi bi-cart3"></i>
        </div>

        <c:if test="${!authorized}">
            <div id="menu"
                 class="icon-container">
                <i class="bi bi-list"></i>
            </div>
        </c:if>

        <c:if test="${authorized}">
            <div class="icon-container"
                 onclick="location.href='<c:url value="/tortikov/auth/sign-out"/>'">
                <i class="bi bi-box-arrow-right"></i>
            </div>
        </c:if>
    </div>

    <div class="sidebar">
        <div id="sidebar-close"
             class="close">
            <i class="bi bi-x-square"></i>
        </div>

        <div class="sidebar-content">
            <div id="sign-in"
                 class="sidebar-content__item">
                <i class="bi bi-person-add"></i>
                Войти / Зарегистрироваться
            </div>

            <div id="admin-sign-in"
                 class="sidebar-content__item">
                <i class="bi bi-person-gear"></i>
                Войти как администратор
            </div>
        </div>
    </div>
</header>

<div class="view-container _container">
    <div class="view-container__info mt-3">
        <div class="title">Открой новые горизонты сладости</div>
        <div class="flex justify-content-between">
            <div>
                <div class="subtitle">Авторские кондитерские изделия</div>

                <button class="mt-3">
                    Оформить заказ
                </button>
            </div>

            <div class="view-cakes">
                <div class="cake"
                     style="background-image: url('${exampleCakeOne.imagePath}')"
                     onclick="location.href='<c:url value="/tortikov/cake?id=${exampleCakeOne.id}"/>'">
                    <img class="berry"
                         style="left: -8rem; bottom: 3rem"
                         src="<c:url value="/images/berry-2.png"/>"
                         alt="Ягода">

                    <div>
                        <span>${exampleCakeOne.name}</span>
                        <img src="<c:url value="/images/arrow.svg"/>" alt="Стрелка">
                    </div>
                </div>

                <div class="cake"
                     style="background-image: url('${exampleCakeTwo.imagePath}')"
                     onclick="location.href='<c:url value="/tortikov/cake?id=${exampleCakeTwo.id}"/>'">
                    <img class="berry"
                         style="top: -4rem; left: -4rem"
                         src="<c:url value="/images/berry-3.png"/>"
                         alt="Ягода">

                    <img class="berry"
                         style="right: -4rem; bottom: -5rem"
                         src="<c:url value="/images/berry-1.png"/>"
                         alt="Ягода">

                    <div>
                        <span>${exampleCakeTwo.name}</span>
                        <img src="<c:url value="/images/arrow.svg"/>" alt="Стрелка">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="cakes"
     class="cakes-container _container">
    <div class="cakes-container__title">Любые торты на ваш выбор</div>

    <div class="cakes-container__cakes">
        <c:forEach var="cake" items="${cakes}">
            <div class="cakes-cake"
                 onclick="location.href='<c:url value="/tortikov/cake?id=${cake.id}"/>'">
                <img class="cake-image"
                     src="${cake.imagePath}"
                     alt="${cake.name}">

                <div class="cake-name">
                        ${cake.name}
                </div>

                <div class="cake-description">
                    ${cake.shortDescription}
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<footer id="contact"
        class="_container">
    <a href="<c:url value="/tortikov/main"/>">
        <img src="<c:url value="/images/logo.svg"/>"
             alt="Tortikov">
    </a>

    <div class="flex direction-column align-items-center">
        <div class="footer-title">Наши адреса</div>

        <ul class="addresses-list">
            <li class="mr-3">
                <div>ул. Немига, 12</div>
                <div>Телефон: +375 29 123 45 67</div>
                <div>Время работы: 8:00 - 22:00</div>
            </li>
            <li class="mr-3">
                <div>ул. Николы Теслы, 19</div>
                <div>Телефон: +375 25 987 65 43</div>
                <div>Время работы: 7:30 - 22:00</div>
            </li>
            <li>
                <div>ул. Притыцкого, 156</div>
                <div>Телефон: +375 44 765 43 21</div>
                <div>Время работы: 8:00 - 22:00</div>
            </li>
        </ul>
    </div>

    <div>
        <div class="footer-title">Наши соцсети</div>

        <div class="flex justify-content-around">
            <a href="#">
                <img src="/images/social/facebook.svg">
            </a>

            <a href="#">
                <img src="/images/social/instagram.svg">
            </a>
        </div>
    </div>
</footer>

<div id="modal"
     class="modal">
    <div class="modal-content">
        <form class="needs-validation"
              action="<c:url value="/tortikov/auth/sign-in"/>"
              method="post"
              novalidate>
            <div class="modal-title__container">
                <div class="modal-title">Войдите или зарегистрируйтесь</div>
                <div id="modal-close"
                     class="close">
                    <i class="bi bi-x-lg"></i>
                </div>
            </div>

            <div class="modal-input__container">
                <div id="fio"
                     class="mb-3">
                    <input type="text"
                           class="form-control form-control-lg"
                           name="fullName"
                           placeholder="ФИО"
                           aria-label="ФИО"
                           required>
                    <div class="invalid-feedback invalid-message">
                        Укажите ФИО
                    </div>
                </div>

                <div class="input-group input-group-lg has-validation mb-3">
                    <span id="basic-addon1"
                          class="input-group-text">
                        <img src="/images/belarus-flag.svg"
                             alt="">
                    </span>
                    <input type="tel"
                           class="form-control form-control-lg phone-mask"
                           name="phone"
                           placeholder="+375(99)99-99-999"
                           aria-label="Номер телефона"
                           aria-describedby="inputGroupPrepend"
                           required>
                    <div class="invalid-feedback invalid-message">
                        Укажите номер телефона
                    </div>
                </div>

                <div>
                    <input type="password"
                           class="form-control form-control-lg"
                           name="password"
                           placeholder="Пароль"
                           aria-label="Пароль"
                           required>
                    <div class="invalid-feedback invalid-message">
                        Укажите пароль
                    </div>
                </div>
            </div>

            <button class="button-sign-in"
                    type="submit">
                Войти
            </button>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.min.js"
        integrity="sha384-RuyvpeZCxMJCqVUGFI0Do1mQrods/hhxYlcVfGPOfQtPJh0JCw12tUAZ/Mv10S7D"
        crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2.1/dist/jquery.min.js"
        type="text/javascript">
</script>
<script src="https://cdn.jsdelivr.net/npm/jquery.maskedinput@1.4.1/src/jquery.maskedinput.js"
        type="text/javascript">
</script>
<script>
    $(".phone-mask").mask("+375(99)99-99-999");
</script>
<script src="/js/script.js"></script>
</body>
</html>
