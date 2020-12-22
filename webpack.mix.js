const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js('themes/zoomir/resources/js/app.js', 'themes/zoomir/js')
   .sass('themes/zoomir/resources/sass/app.scss', 'themes/zoomir/css')
   .copyDirectory('themes/zoomir/resources/js/libraries', 'themes/zoomir/js/libraries')
   .copyDirectory('themes/zoomir/resources/sass/libraries', 'themes/zoomir/css/libraries')
   .options({
      processCssUrls: false,
   })
   .browserSync({
      proxy: '178.217.156.6',
      files: [
         'themes/zoomir/css/{*,**/*}.css',
         'themes/zoomir/js/{*,**/*}.js',
         'themes/zoomir/{*,**/*}.php',
      ],
   });