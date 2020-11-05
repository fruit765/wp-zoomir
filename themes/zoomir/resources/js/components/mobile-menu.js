$(document).ready(() => {

    $('.header__mobile-menu-btn').click(() => {
        $('html, body, .mobile-menu').addClass('mobile-menu_open');
    });

    $('.mobile-menu__close').click((e) => {
        $('html, body, .mobile-menu').removeClass('mobile-menu_open');
    });

    $('.mobile-menu__wrapper').click((e) => {
        if (e.currentTarget === e.target) {
            $('html, body, .mobile-menu').removeClass('mobile-menu_open');
        }
    });
});