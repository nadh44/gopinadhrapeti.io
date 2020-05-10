# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile += %W( ap.js bootstrap.js cable.js classie.js form_bottom.js hammer.min.js jquery-3.3.1.min.js jquery-migrate.min.js jquery.cleditor.min.js jquery.flip.min.js jquery.js js_composer_front.min.js jquery.multilevelpushmenu.min.js main.min.js mlpushmenu.js modernizr.custom.js modernizr.js myflip.js owl.carousel.js swiper.jquery.min.js picturefill.min.js TweenMax.min.js )
Rails.application.config.assets.precompile += %W( bootstrap.css animate.min.css font-awesome.min.css jquery.cleditor.css js_composer.min.css main.min.css multilevelpushmenu.css new-style.css normalize.css owl.carousel.css owl.theme.default.css responsive.css swiper.min.css )
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
