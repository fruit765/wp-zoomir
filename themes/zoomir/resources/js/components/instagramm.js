$(document).ready(() => {
    var user = detect.parse(navigator.userAgent);
    var deviceType = user.device.type;

    if (!(deviceType === 'Desktop' && !/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent))) {
        $('.instagramm .instagramm__items').css('overflow', 'auto');
    }

    $('.instagramm .instagramm__items').mousewheel((e, delta) => {
        e.preventDefault();
        e.currentTarget.scrollLeft -= (delta * 200);
    });
});