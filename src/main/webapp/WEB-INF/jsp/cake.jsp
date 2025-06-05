<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Клюквенный торт с маскарпоне</title>
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
          href="<c:url value="/css/cake.css"/>">
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
                   href="<c:url value="/tortikov/main"/>">
                    Главная
                </a>
            </li>
            <li class="mr-3">
                <a class="link"
                   href="<c:url value="/tortikov/main#cakes"/>">
                    Торты
                </a>
            </li>
            <li>
                <a class="link"
                   href="<c:url value="/tortikov/main#contact"/>">
                    Контакты
                </a>
            </li>
            <c:if test="${userRole == 'ADMIN'}">
                <li>
                    <a class="link"
                       href="<c:url value="/tortikov/orders"/>">
                        Администратор
                    </a>
                </li>
            </c:if>
        </ul>
    </nav>
    <div class="flex">
        <div class="icon-container">
            <a href="<c:url value="/tortikov/cart"/>">
                <i class="bi bi-cart3"></i>
            </a>
        </div>

        <c:if test="${!authorized}">
            <div id="sign-in"
                 class="icon-container">
                <i class="bi bi-person"></i>
            </div>
        </c:if>

        <c:if test="${authorized}">
            <div class="icon-container"
                 onclick="location.href='<c:url value="/tortikov/auth/sign-out"/>'">
                <i class="bi bi-box-arrow-right"></i>
            </div>
        </c:if>
    </div>
</header>

<div class="cake-container _container">
    <div class="cake">
        <img class="cake-image"
             src="${cake.imagePath}"
             alt="${cake.name}">

        <div class="cake-info">
            <div class="cake-name">
                ${cake.name}
            </div>

            <div class="cake-description">
                ${cake.description}
            </div>

            <div class="flex align-items-center">
                <div class="cake-price">
                    ${cake.price} р.
                </div>

                <button type="button"
                        onclick="location.href='<c:url value="/tortikov/cart/add?id=${cake.id}"/>'">
                    В корзину
                    <i class="bi bi-cart3"></i>
                </button>
            </div>
        </div>
    </div>
</div>

<footer class="_container">
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
