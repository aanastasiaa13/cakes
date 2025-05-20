<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Клюквенный торт с маскарпоне</title>
        <link rel="icon" href="<c:url value="/images/logo.svg"/>">
        <link type="text/css" rel="stylesheet" href="<c:url value="/css/styles.css"/>">
        <link type="text/css" rel="stylesheet" href="<c:url value="/css/cake.css"/>">
        <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="cake-container">
            <header class="flex justify-content-between align-items-center mt-3">
                <a href="#"><img src="<c:url value="/images/logo.svg"/>" alt="Tortikov"></a>
                <nav>
                    <ul>
                        <li class="mr-3"><a class="link" href="#">Главная</a></li>
                        <li class="mr-3"><a class="link" href="#">Торты</a></li>
                        <li><a class="link" href="#">Контакты</a></li>
                    </ul>
                </nav>
                <div class="account-container">
                    <a class="mr-1"
                       href="#">
                        <img src="<c:url value="/images/account.svg"/>" alt="Войти">
                    </a>

                    <a href="#">
                        <img src="<c:url value="/images/cart.svg"/>" alt="Корзина">
                    </a>
                </div>
            </header>

            <div class="cake-info">
                <img class="cake-image"
                     src="<c:url value="/images/cakes/klykvenniy.png"/>"
                     alt="Клюквенный торт с маскарпоне">

                <div style="width: 65%;">
                    <div class="cake-title">Клюквенный торт с маскарпоне</div>

                    <div class="cake-description">
                        Изысканное десертное блюдо, в котором кислинка клюквы гармонично сочетается с нежным сливочным кремом из маскарпоне.
                        Бисквит женуаз придаёт торту легкость и воздушность, создавая идеальный баланс вкусов.
                    </div>

                    <div class="flex justify-content-center align-items-center">
                        <div class="cake-price">
                            45 р.
                        </div>

                        <button>
                            Оставить заявку
                        </button>

                        <div class="cart">
                            <img src="<c:url value="/images/cart.svg"/>" alt="Корзина">
                        </div>
                    </div>
                </div>
            </div>

            <footer>
                <a href="#"><img src="<c:url value="/images/logo.svg"/>" alt="Tortikov"></a>

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
        </div>
    </body>
</html>
