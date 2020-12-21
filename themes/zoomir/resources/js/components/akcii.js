$(document).ready(() => {
    $('.akcii__items').slick({
        slidesToShow: 2,
        slidesToScroll: 1,
        infinite: true,
        dots: true,
        variableWidth: true,
        responsive: [
            {
                breakpoint: 780,
                settings: {
                    slidesToShow: 1,
                }
            },
        ]
    });
});