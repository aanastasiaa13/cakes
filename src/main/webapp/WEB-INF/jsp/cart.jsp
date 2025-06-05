<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Корзина</title>
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
          href="<c:url value="/css/cart.css"/>">
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
        <div class="icon-container mr-1"
             onclick="location.href='<c:url value="/tortikov/cart"/>'">
            <i class="bi bi-cart3"></i>
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

<div class="cart-container _container">
    <c:if test="${!authorized}">
        <div class="button-sign-in-container">
            <button id="button-sign-in"
                    type="button">Войти / Зарегистрироваться
            </button>
        </div>
    </c:if>

    <c:if test="${authorized && items.size() == 0}">
        <div class="empty-cart">Корзина пуста</div>
    </c:if>

    <c:if test="${authorized && items.size() > 0}">
        <form class="row g-3 needs-validation"
              action="<c:url value="/tortikov/process"/>"
              method="post"
              novalidate>
            <div class="cart-title">Оформление заказа</div>

            <div class="cart-content">
                <c:forEach var="item" items="${items}">
                    <div class="cart-item__container">
                        <div class="cart-item">
                            <div class="cart-item__one">
                                <img class="cart-item__image"
                                     src="${item.cakeImagePath}"
                                     alt="${item.cakeName}">
                                <input type="hidden"
                                       name="cakeName-${item.id}"
                                       value="${item.cakeName}">
                                <div class="cart-item__name">
                                    Торт "${item.cakeName}"
                                </div>
                            </div>

                            <div class="cart-item__two">
                                <input class="form-control form-control-lg cart-item__count"
                                       name="count-${item.id}"
                                       type="number"
                                       value="1"
                                       min="1"
                                       max="10">
                                <div class="cart-item__price">
                                    <span data-basePrice="${item.cakePrice}">
                                            ${item.cakePrice}
                                    </span> р.
                                </div>
                            </div>

                            <div class="cart-item__action"
                                 onclick="location.href='<c:url value="/tortikov/cart/delete?id=${item.id}"/>'">
                                <i class="bi bi-trash3 action-icon"></i>
                            </div>
                        </div>

                        <div class="line"></div>
                    </div>
                </c:forEach>
            </div>

            <div class="result-block">
                <input id="hidden-cost"
                       type="hidden"
                       name="cost">
                <div class="result-cost">К оплате: <span>0</span> р.</div>
                <div>
                    <button id="button-process"
                            type="button">
                        Оформить
                    </button>
                </div>
            </div>

            <div class="line"></div>

            <div class="info-block row g-3">
                <div class="col-md-6">
                    <label for="fio1"
                           class="form-label">
                        ФИО
                    </label>
                    <input id="fio1"
                           name="fio"
                           class="form-control form-control-lg"
                           type="text"
                           required>
                    <div class="invalid-feedback invalid-message">
                        Укажите ФИО
                    </div>
                </div>

                <div class="col-md-6">
                    <label for="addresses"
                           class="form-label">
                        Адрес доставки
                    </label>
                    <select id="addresses"
                            name="address"
                            class="form-select form-select-lg">
                        <option selected
                                value="ул. Немига, 12">
                            ул. Немига, 12
                        </option>
                        <option value="ул. Николы Теслы, 19">
                            ул. Николы Теслы, 19
                        </option>
                        <option value="ул. Притыцкого, 156">
                            ул. Притыцкого, 156
                        </option>
                    </select>
                </div>

                <div class="col-12 button-container">
                    <button type="submit">
                        Заказать
                    </button>
                </div>
            </div>
        </form>
    </c:if>
</div>

<footer class="_container">
    <a href="#">
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
