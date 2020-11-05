$(document).ready(() => {
    var user = detect.parse(navigator.userAgent);
    var deviceType = user.device.type;

    if (!(deviceType === 'Desktop' && !/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent))) {
        $('.catalog-categories-page__category-items').css('overflow', 'auto');
    }

    $('.catalog-categories-page__category-items').mousewheel((e, delta) => {
        e.preventDefault();
        e.currentTarget.scrollLeft -= (delta * 200);
    });
});