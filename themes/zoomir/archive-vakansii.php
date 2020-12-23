<?php get_header(); ?>
    <div class="vakansii-page">
        <div class="vakansii-page__title-desc-wrapper section">
            <div class="vakansii-page__title-desc">
                <div class="vakansii-page__title page-title">
                    <div class="vakansii-page__title-wrapper">
                        Вакансии
                    </div>
                </div>
                <div class="vakansii-page__desc">
                    Мы всегда рады новым людям! В нашу дружную команду сейчас требуются эти специалисты.
                </div>
            </div>
        </div>

        <div class="vakansii-page__items">
            <?php $loop = new WP_Query(array('posts_per_page' => 0, 'post_type' => 'vakansii', 'orderby' => 'id', 'order' => 'DESC')); ?>
            <?php while ($loop->have_posts()) { $loop->the_post() ?>
                <?php
                    $city = get_field('city', get_the_ID());
                    if ($city === 'Майкоп') {
                        $class = ' vakansii-page__item-text-title_maykop vakansii-page__item-text-title_maykop-mobile-left';
                    }
                    else {
                        $class = ' vakansii-page__item-text-title_belorechensk vakansii-page__item-text-title_belorechensk-mobile-left';
                    }
                ?>
                <div class="vakansii-page__item">
                    <div class="vakansii-page__item-text">
                        <div class="vakansii-page__item-text-title<?php echo $class; ?>">Вакансия</div>
                        <div class="vakansii-page__item-text-desc">
                            <?php the_title(); ?>
                        </div>
                        <a href="<?php the_permalink(); ?>" class="vakansii-page__item-text-btn btn">Подробнее</a>
                    </div>
                    <div class="vakansii-page__item-image">
                        <img src="<?php echo wp_get_attachment_image_url(get_post_meta(get_the_ID(), '_thumbnail_id', true), 'full'); ?>">
                    </div>
                </div>
            <?php } wp_reset_query(); ?>
        </div>
    </div>
<?php get_footer(); ?>