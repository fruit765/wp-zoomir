<?php
/*
Template Name: Доставка
Template Post Type: page
*/
?>
<?php get_header(); ?>
    <div class="delivery-page">
        <div class="delivery-page__title page-title section">Доставка</div>

        <div class="delivery-page__inform section">
            <div class="delivery-page__inform-hours">
                <div class="delivery-page__inform-hours-left">
                    Заказ товара
                </div>
                <div class="delivery-page__inform-hours-right">
                    Ежедневно
                    <span>с 9:00 до 20:00</span>
                </div>
            </div>
            <div class="delivery-page__inform-phones">
                <div class="delivery-page__inform-phone">
                    Для заказа:
                    <span>8-961-970-22-27</span>
                </div>
                <div class="delivery-page__inform-phone">
                    Для заказа:
                    <span>8-962-764-62-22</span>
                </div>
            </div>
        </div>

        <div class="delivery-page__zones">
            <div class="delivery-page__zones-title-wrapper">
                <div class="delivery-page__zones-title title">
                    <span>Зоны</span>
                    Доставки
                </div>
            </div>
            <div class="delivery-page__zones-items">
                <div class="delivery-page__zones-item">
                    <div class="delivery-page__zones-item-image">
                        <img src="<?php echo get_template_directory_uri() ?>/resources/imgs/delivery-page-zone-maykop.png">
                        <span>
                            * Для более детальной информации по доставке, обращайтесь по указанным телефонам.
                        </span>
                    </div>
                    <div class="delivery-page__zones-item-text">
                        <div class="delivery-page__zones-item-text-row">
                            <div class="delivery-page__zones-item-text-col1">
                                Доставка по городу
                                <span>Майкопу</span>
                            </div>
                            <div class="delivery-page__zones-item-text-col2">
                                Заказ от 500₽ - бесплатная доставка. Мин заказ - 500₽.
                            </div>
                        </div>
                        <div class="delivery-page__zones-item-text-row">
                            <div class="delivery-page__zones-item-text-col1">
                                Доставка за городом
                                <span>
                                    До 15 км
                                    <span>От Майкопа</span>
                                </span>
                            </div>
                            <div class="delivery-page__zones-item-text-col2">
                                Заказ от 1000₽ - бесплатная доставка, от 500₽ - 1000₽ доставка стоит 200₽. Мин заказ - 500₽.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="delivery-page__zones-item">
                    <div class="delivery-page__zones-item-image">
                        <img src="<?php echo get_template_directory_uri() ?>/resources/imgs/delivery-page-zone-belorechensk.png">
                        <span>
                            * Для более детальной информации по доставке, обращайтесь по указанным телефонам.
                        </span>
                    </div>
                    <div class="delivery-page__zones-item-text">
                        <div class="delivery-page__zones-item-text-row">
                            <div class="delivery-page__zones-item-text-col1">
                                Доставка по городу
                                <span>Белореченску</span>
                            </div>
                            <div class="delivery-page__zones-item-text-col2">
                                Заказ от 500₽ - бесплатная доставка. Мин заказ - 500₽.
                            </div>
                        </div>
                        <div class="delivery-page__zones-item-text-row">
                            <div class="delivery-page__zones-item-text-col1">
                                Доставка за городом
                                <span>
                                    До 20 км
                                    <span>От Белореченска</span>
                                </span>
                            </div>
                            <div class="delivery-page__zones-item-text-col2">
                                Заказ от 1000₽ - бесплатная доставка, от 500₽ - 1000₽ доставка стоит 200₽. Мин заказ - 500₽.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="delivery-page__payment section">
            <div class="delivery-page__payment-title-wrapper">
                <div class="delivery-page__payment-title title">
                    <span>Оплата</span>
                    заказа
                </div>
            </div>
            <div class="delivery-page__payment-desc">
                <div class="delivery-page__payment-desc-left">
                    Оплата производится курьеру
                </div>
                <div class="delivery-page__payment-desc-right">
                    наличными
                    <span>или картой</span>
                </div>
            </div>

            <div class="delivery-page__payment-action">
                <div class="delivery-page__payment-action-procent">
                    15%
                </div>
                При покупке любых видов кормов от 1000 рублей предоставляется скидка на ветеринарные препараты (покупки должны быть в одном чеке).
            </div>
        </div>
    </div>
<?php get_footer(); ?>