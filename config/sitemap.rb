# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://malibuitlabs.com"
SitemapGenerator::Sitemap.public_path = 'public/'
SitemapGenerator::Sitemap.sitemaps_path = 'sitemap/'
SitemapGenerator::Sitemap.create do

	add root_path, :changefreq => 'daily'
	 add about_us_path , :changefreq => 'daily'
   add portfolio_path, :changefreq => 'daily', :changefreq => 'daily'
   add services_path, :changefreq => 'daily'
   add  our_privacy_policy_path , :changefreq => 'daily'
      add  ecommerce_woocommerce_path , :changefreq => 'daily'
         add  ecommerce_shopify_path , :changefreq => 'daily'
            add  ecommerce_path , :changefreq => 'daily'
            
	Blog.find_each do |news|

   year = news.created_at.localtime.strftime("%Y")



  month = news.created_at.localtime.strftime("%m")



  date =   news.created_at.localtime.strftime("%d")


# add show_news_path(news), :changefreq => 'daily', :lastmod => news.updated_at
   add blogs_path(news), :changefreq => 'daily', :lastmod => news.updated_at
  

  
 end
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end
