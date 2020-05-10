Rails.application.routes.draw do
  default_url_options :host => "malibuitlabs.com"
  resources :enquiries, :except => [:index, :edit, :show, :edit, :update, :destroy]
  #get 'pages/index'
  root to: 'pages#index'
  devise_for :users
  resources :blogs, :except => [:latest_blogs]
  get 'latestblogs' => 'blogs#latest_blogs', :as => 'latest_blogs'
  get 'ourblog' => 'blogs#ourblog', :as => 'ourblog'
  get 'about-us' => 'pages#aboutus', :as => 'about-us'
  get 'portfolio' => 'pages#portfolio', :as => 'portfolio'
  get 'services' => 'pages#service', :as => 'services'
  get 'technologies' => 'pages#technologies', :as => 'technologies'
  get 'web-design' => 'pages#webdesign', :as => 'webdesign'
  get 'application-development' => 'pages#application_development', :as => 'application-development'
  get 'bigdata' => 'pages#bigdata', :as => 'bigdata'
  get 'data-warehousing-and-business-intelligence' => 'pages#data-warehousing-and-business-intelligence', :as => 'data-warehousing-and-business-intelligence'
  get 'data-and-information-management' => 'pages#data-and-information-management', :as => 'data-and-information-management'
  get 'cloud-and-infrastructure-service' => 'pages#cloud-and-infrastructure-service', :as => 'cloud-and-infrastructure-service'
  get 'qualityassurance' => 'pages#qualityassurance', :as => 'qualityassurance'
  get 'ecommerce' => 'pages#ecommerce', :as => 'ecommerce'
  get 'cms' => 'pages#cms', :as => 'cms'
  get 'mobile-app-dev' => 'pages#mobile-app-dev', :as => 'mobile-app-dev'
  get 'reactjs' => 'pages#reactjs', :as => 'reactjs'
  get 'nodejs' => 'pages#nodejs', :as => 'nodejs'

 
  #get 'careers' => 'pages#careers', :as => 'careers'
  get 'test' => 'pages#test', :as => 'test'
  get 'ecommerce/shopify' => 'pages#shopify', :as => 'ecommerce/shopify'
  get 'ecommerce/magento' => 'pages#magento', :as => 'ecommerce/magento'
  get 'ecommerce/woocommerce' => 'pages#woocommerce', :as => 'ecommerce/woocommerce'
  get 'ecommerce/upgrademagento' => 'pages#upgrademagento', :as => 'ecommerce/upgrademagento'
  get 'contact' => 'contact_pages#new', :as => 'contact_pages'
  post 'contact' => 'contact_pages#create'
  get 'our-privacy-policy' => 'pages#term&privacy', :as => 'our-privacy-policy'
  get 'careers' => 'careers#new', :as => 'careers'
  post 'careers' => 'careers#create'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
