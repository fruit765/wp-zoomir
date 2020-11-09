<?php get_header(); ?>
    <div class="shops-page section">
        <div class="shops-page__title-desc-wrapper">
            <div class="shops-page__title-desc">
                <div class="shops-page__title page-title">Магазины</div>
                <div class="shops-page__desc">
                    Наша сеть насчитывает порядка 12 магазинов, как в городе Майкопе, так и в городе Белореченск. В этом разделе по ним собрана вся информация.
                </div>
            </div>
        </div>

        <div id="map" class="shops-page__map"></div>

        <div class="shops-page__tabs">
            <a href="/shop-categories/majkop" class="shops-page__tab<?php if (get_queried_object()->name === 'Майкоп') echo ' shops-page__tab_active'; ?>">Майкоп</a>
            <a href="/shop-categories/belorechensk" class="shops-page__tab<?php if (get_queried_object()->name === 'Белореченск') echo ' shops-page__tab_active'; ?>">Белореченск</a>
        </div>

        <div class="shops-page__items">
            <?php
                $points_arr = [];
                $num = 1;
            ?>
            <?php $loop = new WP_Query(array('posts_per_page' => 0, 'post_type' => 'shop', 'tax_query' => array(array('taxonomy' => 'shop-categories', 'terms'=> get_queried_object()->term_id)), 'orderby' => 'id', 'order' => 'DESC')); ?>
            <?php while ($loop->have_posts()) { $loop->the_post() ?>
                <?php
                    $points_arr[] = [
                        'long' => get_field('long', get_the_ID()),
                        'lat' => get_field('lat', get_the_ID()),
                    ];
                ?>
                <a href="#" class="shops-page__item<?php if ($num === 1) {echo ' shops-page__item_active'; $num++;} ?>">
                    <div class="shops-page__item-title"><span><?php the_title(); ?></span></div>
                    <div class="shops-page__item-image">
                        <img src="<?php echo wp_get_attachment_image_url(get_post_meta(get_the_ID(), '_thumbnail_id', true), 'full'); ?>">
                    </div>
                    <div class="shops-page__item-text">
                        <div class="shops-page__item-text-title"><?php the_title(); ?></div>
                        <div class="shops-page__item-text-table">
                            <?php the_content(); ?>
                        </div>
                    </div>
                </a>
            <?php } wp_reset_query(); ?>
            <script>
                var pointsArr = <?php echo json_encode($points_arr); ?>;
            </script>
        </div>
    </div>
<?php get_footer(); ?>