<?php get_header(); ?>
        <div class="main-block">
            <div class="main-block__text">
                <div class="main-block__title">Зоомир</div>
                <div class="main-block__desc">Более 10 лет с заботой о ваших любимцах</div>
                <button class="main-block__btn btn" type="button">актульные акции</button>
            </div>
        </div>

        <div class="akcii">
            <div class="akcii__title title">Акции</div>
            <div class="akcii__items">
                <div class="akcii__items-wrapper">
                    <?php $loop = new WP_Query(array('posts_per_page' => 0, 'post_type' => 'akcii', 'orderby' => 'id', 'order' => 'DESC')); ?>
                    <?php while ($loop->have_posts()) { $loop->the_post() ?>
                        <a href="#" class="akcii__item">
                            <div class="akcii__item-procent"><?php echo get_field('proczent', get_the_ID()); ?></div>
                            <div class="akcii__item-image">
                                <img src="<?php echo wp_get_attachment_image_url(get_post_meta(get_the_ID(), '_thumbnail_id', true), 'full'); ?>">
                            </div>
                            <div class="akcii__item-text">
                                <div class="akcii__item-title"><?php the_title(); ?></div>
                                <div class="akcii__item-desc"><?php the_content(); ?></div>
                                <div class="akcii__item-more">Подробнее >></div>
                            </div>
                        </a>
                    <?php } wp_reset_query(); ?>
                </div>
            </div>
        </div>

        <div class="catalog section">
            <div class="catalog__title title">Каталог</div>
            <div class="catalog__desc">В наших магазинах есть товары для разных питомцев, для каждого найдется что-то свое.</div>
            <div class="catalog__items">
                <a href="#" class="catalog__item">
                    <div class="catalog__item-title">Ветаптека</div>
                    <div class="catalog__item-image">
                        <img src="<?php echo get_template_directory_uri(); ?>/resources/imgs/catalog-item-image1.png">
                    </div>
                </a>
                <a href="#" class="catalog__item">
                    <div class="catalog__item-title">Каталог</div>
                    <div class="catalog__item-image">
                        <img src="<?php echo get_template_directory_uri(); ?>/resources/imgs/catalog-item-image2.png">
                    </div>
                </a>
                <a href="#" class="catalog__item">
                    <div class="catalog__item-title">Аксессуары</div>
                    <div class="catalog__item-image">
                        <img src="<?php echo get_template_directory_uri(); ?>/resources/imgs/catalog-item-image3.png">
                    </div>
                </a>
                <a href="#" class="catalog__item">
                    <div class="catalog__item-title">Садоводство</div>
                    <div class="catalog__item-image">
                        <img src="<?php echo get_template_directory_uri(); ?>/resources/imgs/catalog-item-image4.png">
                    </div>
                </a>
                <a href="#" class="catalog__item">
                    <div class="catalog__item-title">Рыбы<br>и аквариумы</div>
                    <div class="catalog__item-image">
                        <img src="<?php echo get_template_directory_uri(); ?>/resources/imgs/catalog-item-image5.png">
                    </div>
                </a>
                <a href="#" class="catalog__item">
                    <div class="catalog__item-title">Животные</div>
                    <div class="catalog__item-image">
                        <img src="<?php echo get_template_directory_uri(); ?>/resources/imgs/catalog-item-image6.png">
                    </div>
                </a>
            </div>
            <button class="catalog__btn btn">В каталог</button>
        </div>

        <div class="skidki section">
            <div class="skidki__title title"><span>Скидки</span><br>на все товары</div>
            <div class="skidki__items">
                <div class="skidki__item">
                    <div class="skidki__item-title">В Майкопе</div>
                    <div class="skidki__item-procent">10%</div>
                    <div class="skidki__item-text">
                        <div class="skidki__item-text-title">В Майкопе</div>
                        <div class="skidki__item-text-desc">15 и 25 числа каждого месяца<br>во всех магазинах сети</div>
                    </div>
                </div>
                <div class="skidki__item">
                    <div class="skidki__item-title">В Белореченске</div>
                    <div class="skidki__item-procent">10%</div>
                    <div class="skidki__item-text">
                        <div class="skidki__item-text-title">В Белореченске</div>
                        <div class="skidki__item-text-desc">Каждую среду<br>во всех магазинах сети</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="delivery">
            <div class="delivery__title title"><span>Бесплатная</span>доставка</div>
            <div class="delivery__desc">Бесплатно доставляем по Майкопу и Белореченску.</div>
            <button class="delivery__more btn">Подробнее</button>
        </div>

        <div class="instagramm">
            <div class="instagramm__title title">
                <div class="instagramm__title-wrapper">
                    <span class="instagramm__title-span1">Наш</span><br><span class="instagramm__title-span2">Инстаграмм</span>
                </div>
            </div>
            <div class="instagramm__items">
                <div class="instagramm__items-wrapper">
                    <div class="instagramm__item">
                        <img src="<?php echo get_template_directory_uri(); ?>/resources/imgs/instagramm-image1.png">
                    </div>
                    <div class="instagramm__item">
                        <img src="<?php echo get_template_directory_uri(); ?>/resources/imgs/instagramm-image2.png">
                    </div>
                    <div class="instagramm__item">
                        <img src="<?php echo get_template_directory_uri(); ?>/resources/imgs/instagramm-image3.png">
                    </div>
                    <div class="instagramm__item">
                        <img src="<?php echo get_template_directory_uri(); ?>/resources/imgs/instagramm-image4.png">
                    </div>
                    <div class="instagramm__item">
                        <img src="<?php echo get_template_directory_uri(); ?>/resources/imgs/instagramm-image1.png">
                    </div>
                    <div class="instagramm__item">
                        <img src="<?php echo get_template_directory_uri(); ?>/resources/imgs/instagramm-image2.png">
                    </div>
                    <div class="instagramm__item">
                        <img src="<?php echo get_template_directory_uri(); ?>/resources/imgs/instagramm-image3.png">
                    </div>
                    <div class="instagramm__item">
                        <img src="<?php echo get_template_directory_uri(); ?>/resources/imgs/instagramm-image4.png">
                    </div>
                </div>
            </div>
        </div>
<?php get_footer(); ?>