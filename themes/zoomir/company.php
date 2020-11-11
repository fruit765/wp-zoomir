<?php
/*
Template Name: Компания
Template Post Type: page
*/
?>
<?php get_header(); ?>
    <div class="company-page">
        <div class="company-page__title page-title section">Компания</div>
        <div class="company-page__inform section">
            <div class="company-page__inform-nums">
                <div class="company-page__inform-nums-item">
                    <span>1997</span> Год основания
                </div>
                <div class="company-page__inform-nums-item">
                    <?php
                        $loop = new WP_Query(array('posts_per_page' => 0, 'post_type' => 'shop', 'tax_query' => array(array('taxonomy' => 'shop-categories', 'field' => 'name', 'terms'=> 'Майкоп')), 'orderby' => 'id', 'order' => 'DESC'));
                        $count = 0;
                        while ($loop->have_posts()) {
                            $loop->the_post();
                            $count++;
                        }
                        wp_reset_query();
                    ?>
                    <span><?php echo $count; ?> магазинов</span> в Майкопе
                </div>
                <div class="company-page__inform-nums-item">
                    <?php
                        $loop = new WP_Query(array('posts_per_page' => 0, 'post_type' => 'shop', 'tax_query' => array(array('taxonomy' => 'shop-categories', 'field' => 'name', 'terms'=> 'Белореченск')), 'orderby' => 'id', 'order' => 'DESC'));
                        $count = 0;
                        while ($loop->have_posts()) {
                            $loop->the_post();
                            $count++;
                        }
                        wp_reset_query();
                    ?>
                    <span><?php echo $count; ?> магазина</span> в Белореченске
                </div>
            </div>
            <div class="company-page__inform-image">
                <img src="<?php echo get_template_directory_uri() ?>/resources/imgs/company-page-inform-image.png">
            </div>
            <div class="company-page__inform-text-wrapper">
                <div class="company-page__inform-text">
                    <p>
                        Развитие нашей компании началось 13 лет назад и тогда это был маленький магазинчик Зоомир. Тогда мы и подумать не могли, а только мечтали, что вырастем в большую сеть.
                    </p>
                    <p>
                        И вот сейчас оглядываясь назад мы еще сильнее начинаем ценить наших покупателей, ведь все что мы делаем это именно для вас, вас владельцем своих любимых питомцев.
                    </p>
                    <p>
                        Поэтому в наших магазинах товары от проверенных и надежных производителей, широкий ассортимент, чтобы вы нашли все что нужно и для любого из своих питомцев.
                    </p>
                    <p>
                        Мы стремиммся и дальше улучшать свое качество и регулярно расширяем ассортимент наших магазинов, пополняя его новинками.
                    </p>
                </div>
            </div>
        </div>
    </div>
<?php get_footer(); ?>