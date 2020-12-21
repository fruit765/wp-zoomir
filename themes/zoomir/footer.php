            <footer class="footer">
                <a href="/"class="footer__logo"><img src="<?php echo get_template_directory_uri(); ?>/resources/imgs/header-logo.png"></a>
                <div class="footer__text1">
                    <a href="/catalog">Каталог</a>
                    <a href="/shop-categories/majkop">Магазины</a>
                    <a href="/vakansii">Вакансии</a>
                    <a href="/kompaniya">Компания</a>
                </div>
                <div class="footer__text2">
                    <a href="/dostavka">Доставка</a>
                    <a href="#">Скидки</a>
                    <a href="/akcii">Акции</a>
                </div>
                <div class="footer__contacts">
                    <div class="footer__contacts-email">@mail</div>
                    <div class="footer__contacts-phone">8 800 200 54 34</div>
                </div>
                <div class="footer__social">
                    <a href="#" class="footer__social-inst"></a>
                    <a href="#" class="footer__social-vk"></a>
                    <a href="#" class="footer__social-fb"></a>
                </div>
            </footer>
        </div>

        <?php wp_footer(); ?>
        <script>
            var ymaps;
        </script>
        <?php if (is_tax('shop-categories')) { ?>
            <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU&amp;apikey=6c63b2b7-912b-40f2-a252-2cbdc56042b9" type="text/javascript"></script>
        <?php } ?>
    </body>
</html>