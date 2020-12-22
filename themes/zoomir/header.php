<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Зоомир</title>
        <link rel="icon" type="image/png" href="<?php echo get_template_directory_uri(); ?>/resources/imgs/favicon.ico" />
        <?php wp_head(); ?>
    </head>
    <body>
        <div class="page-wrapper">
            <header class="header">
                <div class="header__wrapper">
                    <div class="header__logo">
                        <a href="/"><img src="<?php echo get_template_directory_uri(); ?>/resources/imgs/header-logo.png"></a>
                    </div>
                    <div class="header__menu">
                        <a href="/catalog" class="header__menu-item">Каталог</a>
                        <a href="/akcii" class="header__menu-item">Акции</a>
                        <a href="/shop-categories/majkop" class="header__menu-item">Магазины</a>
                        <a href="/dostavka" class="header__menu-item">Доставка</a>
                        <a href="/vakansii" class="header__menu-item">Вакансии</a>
                        <a href="/kompaniya" class="header__menu-item">Компания</a>
                    </div>
                    <div class="header__phone">8 800 200 54 24</div>
                    <div class="header__mobile-menu-btn">
                        <div class="header__mobile-menu-btn-line"></div>
                        <div class="header__mobile-menu-btn-line"></div>
                        <div class="header__mobile-menu-btn-line"></div>
                    </div>
                </div>
            </header>

            <div class="mobile-menu">
                <div class="mobile-menu__cover"></div>
                <div class="mobile-menu__wrapper">
                    <div class="mobile-menu__content">
                        <div class="mobile-menu__title">
                            Зоомир
                            <div class="mobile-menu__close"></div>
                        </div>
                        <div class="mobile-menu__items">
                            <a href="/catalog" class="mobile-menu__item">Каталог</a>
                            <a href="/akcii" class="mobile-menu__item">Акции</a>
                            <a href="/shop-categories/majkop" class="mobile-menu__item">Магазины</a>
                            <a href="/dostavka" class="mobile-menu__item">Доставка</a>
                            <a href="/vakansii" class="mobile-menu__item">Вакансии</a>
                            <a href="/kompaniya" class="mobile-menu__item">Компания</a>
                        </div>
                        <div class="mobile-menu__social">
                            <a href="#" class="mobile-menu__social-inst"></a>
                            <a href="#" class="mobile-menu__social-vk"></a>
                            <a href="#" class="mobile-menu__social-fb"></a>
                        </div>
                    </div>
                </div>
            </div>