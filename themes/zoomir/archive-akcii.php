<?php get_header(); ?>
    <div class="akcii-page section">
        <div class="akcii-page__title page-title">Акции</div>
        <div class="akcii-page__items">
            <?php $loop = new WP_Query(array('posts_per_page' => 0, 'post_type' => 'akcii', 'orderby' => 'id', 'order' => 'DESC')); ?>
            <?php while ($loop->have_posts()) { $loop->the_post() ?>
                <?php
                    $is_active = get_field('is_active', get_the_ID());
                ?>
                <?php if ($is_active && $is_active[0] ==='Да') { ?>
                    <a href="#" class="akcii-page__item">
                        <div class="akcii-page__item-title"><?php the_title(); ?></div>
                        <div class="akcii-page__item-desc"><?php the_content(); ?></div>
                        <div class="akcii-page__item-img">
                            <img src="<?php echo get_field('long_image', get_the_ID()); ?>">
                        </div>
                        <div class="akcii-page__item-skidka">
                            <span class="akcii-page__item-skidka-part1">Скидка <?php echo get_field('proczent', get_the_ID()); ?></span>
                            <?php $opisanie_proczenta = get_field('opisanie_proczenta', get_the_ID()); ?>
                            <?php if ($opisanie_proczenta) { ?>
                                <span class="akcii-page__item-skidka-part2"><?php echo get_field('opisanie_proczenta', get_the_ID()); ?></span>
                            <?php } ?>
                        </div>
                        <div class="akcii-page__item-date"><?php echo get_field('data_provedeniya', get_the_ID()); ?></div>
                    </a>
                <?php } ?>
            <?php } wp_reset_query(); ?>
        </div>
    </div>
<?php get_footer(); ?>