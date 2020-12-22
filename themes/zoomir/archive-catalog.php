<?php get_header(); ?>
    <div class="catalog-page section">
        <div class="catalog-page__title-desc-wrapper">
            <div class="catalog-page__title-desc">
                <div class="catalog-page__title page-title">
                    <div class="catalog-page__title-wrapper">Каталог</div>
                </div>
                <div class="catalog-page__desc">
                    В наших магазинах собран широкий ассортимент товаров, ознакомится с основными из них вы можете в данном разделе. За более подробной информацией обратитесь к специалистам в наших магазинах.
                </div>
            </div>
        </div>
        <div class="catalog-page__items">
            <?php if ($categories = get_categories(array('taxonomy' => 'catalog-categories', 'parent' => 0, 'hide_empty' => 0, 'orderby' => 'id', 'order' => 'ASC'))) { ?>
                <?php foreach ($categories as $category) { ?>
                    <div class="catalog-page__item">
                        <a href="<?php echo get_category_link($category->term_id); ?>" class="catalog-page__item-category">
                            <div class="catalog-page__item-category-title"><?php echo $category->cat_name; ?></div>
                            <img src="<?php echo wp_get_attachment_image_url(get_term_meta($category->term_id, '_thumbnail_id', true), 'full'); ?>">
                        </a>
                        <div class="catalog-page__item-categories">
                            <?php if ($sub_categories = get_categories(array('taxonomy' => 'catalog-categories', 'parent' => $category->term_id, 'hide_empty' => 0, 'orderby' => 'id', 'order' => 'ASC'))) { ?>
                                <?php foreach ($sub_categories as $sub_category) { ?>
                                    <a href="#"><?php echo $sub_category->cat_name; ?></a>
                                <?php } ?>
                            <?php } ?>
                        </div>
                    </div>
                <?php } ?>
            <?php } ?>
        </div>
    </div>
<?php get_footer(); ?>