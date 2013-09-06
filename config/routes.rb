RxyCloud::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :resource_items
  resources :posts
  resources :product_items
  resources :product_cates
  resources :comments

  get "page/index"
  get "page/about"
  get "page/features"
  get "page/services"
  get "page/portfolio"
  get "page/product_item"
  get "page/blog"
  match "blogpost", :to => "page#blogpost", :via => [:get]
  get "page/private"
  get "page/help"
  get "page/faq"
  
  root :to => "page#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end