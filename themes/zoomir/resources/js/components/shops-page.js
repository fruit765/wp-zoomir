$(document).ready(() => {
    var myMap;

    // Подгружаем карту
    new Promise((resolve, reject) => {
        if (ymaps !== undefined) {
            ymaps.ready(() => {
                myMap = new ymaps.Map('map', {
                    center: [55.73, 37.75],
                    zoom: 9,
                    controls: [],
                });
    
                resolve();
            });
        }
        else {
            reject();
        }
    })
    // Подгружаем точки
    .then(() => {
        var placemark;

        pointsArr.forEach((point, index) => {
            placemark = new ymaps.Placemark([point.long, point.lat],
                {
                    id: index,
                    active: 0,
                },
                {
                    iconLayout: 'default#image',
                    iconImageHref: '/wp-content/themes/zoomir/resources/imgs/map-icon.svg',
                    iconImageSize: [21, 39],
                }
            );
      
            if (index === 0) {
                placemark.options.set('iconImageSize', [30, 55]);
                placemark.properties.set('active', 1);
            }
      
            // Прокрутка к выбранной на карте точке
            placemark.events.add('click', (e) => {
                var id = e.get('target').properties.get('id'), item;

                activePointOnMap(id);

                $('.shops-page__item').each((index, element) => {
                    if (index == id) {
                        item = element;
                        return false;
                    }
                });

                $('.shops-page__item').removeClass('shops-page__item_active');
                $(item).addClass('shops-page__item_active');

                $('html, body').stop().animate(
                    {
                        scrollTop: $(item).offset().top - 30,
                    },
                    {
                        duration: 300,
                        easing: 'easeInOut',
                        queue: false,
                    }
                );
            });
      
            myMap.geoObjects.add(placemark);
        });

        // Прокрутка к карте и выделение на ней точки при клике на точку в списке
        $('.shops-page__item').click((e) => {
            var id, item;

            e.preventDefault();

            myMap.setBounds(myMap.geoObjects.getBounds(), {checkZoomRange:true, zoomMargin: [20, 20, 20, 20]});

            $('.shops-page__item').each((index, element) => {
                if (e.currentTarget === element) {
                    id = index;
                    item = element;
                    return false;
                }
            });

            activePointOnMap(id);

            $('.shops-page__item').removeClass('shops-page__item_active');
            $(item).addClass('shops-page__item_active');

            $('html, body').stop().animate(
                {
                    scrollTop: $('#map').offset().top - 30,
                },
                {
                    duration: 300,
                    easing: 'easeInOut',
                    queue: false,
                }
            );
        });

        myMap.setBounds(myMap.geoObjects.getBounds(), {checkZoomRange:true, zoomMargin: [20, 20, 20, 20]});

        $(window).resize(() => {
            myMap.setBounds(myMap.geoObjects.getBounds(), {checkZoomRange:true, zoomMargin: [20, 20, 20, 20]});
        });
    })
    .catch((error) => {
        //console.log(error);
    });

    function activePointOnMap(id) {
        myMap.geoObjects.each((geoObject) => {
            if (geoObject.properties.get('id') == id) {
                if (geoObject.properties.get('active') != 1) {
                    geoObject.properties.set('active', 1);
                    geoObject.options.set('iconImageSize', [30, 55]);
                }
            }
            else {
                if (geoObject.properties.get('active') == 1) {
                    geoObject.properties.set('active', 0);
                    geoObject.options.set('iconImageSize', [21, 39]);
                }
            }
        });
    }
});