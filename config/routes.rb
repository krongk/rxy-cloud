RxyCloud::Application.routes.draw do
  resources :pages

  mount Ckeditor::Engine => '/ckeditor'
  resources :resource_items
  resources :posts
  resources :product_items
  resources :product_cates
  resources :comments

  match "index", :to => "page#index", :via => [:get]
  match "about", :to => "page#about", :via => [:get]
  match "contact", :to => "page#contact", :via => [:get]
  match "features", :to => "page#features", :via => [:get]
  match "services", :to => "page#services", :via => [:get]
  match "portfolio", :to => "page#portfolio", :via => [:get]
  match "product_item", :to => "page#product_item", :via => [:get]
  match "blog", :to => "page#blog", :via => [:get]
  match "blogpost", :to => "page#blogpost", :via => [:get]
  match "private", :to => "page#private", :via => [:get]
  match "help", :to => "page#help", :via => [:get]
  match "faq", :to => "page#faq", :via => [:get]
  
  root :to => "page#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end