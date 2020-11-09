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

        <div class="shops-page__map">
            <img src="<?php echo get_template_directory_uri() ?>/resources/imgs/map.png">
        </div>

        <div class="shops-page__tabs">
            <a href="/shop-categories/majkop" class="shops-page__tab<?php if (get_queried_object()->name === 'Майкоп') echo ' shops-page__tab_active'; ?>">Майкоп</a>
            <a href="/shop-categories/belorechensk" class="shops-page__tab<?php if (get_queried_object()->name === 'Белореченск') echo ' shops-page__tab_active'; ?>">Белореченск</a>
        </div>

        <div class="shops-page__items">
            <?php $loop = new WP_Query(array('posts_per_page' => 0, 'post_type' => 'shop', 'tax_query' => array(array('taxonomy' => 'shop-categories', 'terms'=> get_queried_object()->term_id)), 'orderby' => 'id', 'order' => 'DESC')); ?>
            <?php while ($loop->have_posts()) { $loop->the_post() ?>
                <a href="#" class="shops-page__item">
                    <div class="shops-page__item-title"><?php the_title(); ?></div>
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
        </div>
    </div>
<?php get_footer(); ?>