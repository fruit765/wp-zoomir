<?php
    // Подключаем стили
    function css_mystyle() {
        if(!is_admin()){
            wp_enqueue_style('app', get_template_directory_uri() . '/css/app.css');
        }
    }
    add_action('wp_print_styles', 'css_mystyle', 1);

    // Подключаем скрипты
    function jquery_script_method() {
		wp_deregister_script('jquery');
        wp_enqueue_script('app', get_template_directory_uri().'/js/app.js', false, false, true);
        wp_enqueue_script('detect', get_template_directory_uri().'/js/libraries/detect.min.js', false, false, true);
        wp_enqueue_script('mousewheel', get_template_directory_uri().'/js/libraries/jquery.mousewheel.min.js', false, false, true);
	}    
    add_action('wp_enqueue_scripts', 'jquery_script_method');

    // Подключаем произвольное меню и миниатюру поста
	if (function_exists('add_theme_support')) {
		add_theme_support('menus');
		add_theme_support('post-thumbnails');
	}
    register_nav_menu('header-menu', 'Верхнее меню');

    // Остановить предзагрузку следующей статьи и двойную обработку шаблоана single.php
    remove_action('wp_head', 'adjacent_posts_rel_link_wp_head');
?>