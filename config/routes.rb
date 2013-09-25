RxyCloud::Application.routes.draw do
  resources :pages

  mount Ckeditor::Engine => '/ckeditor'
  resources :resource_items
  resources :posts
  resources :product_items
  resources :product_cates
  resources :comments

  match "blog", :to => "pages#blog", :via => [:get]
  match "blogpost/:id", :to => "pages#blogpost", :via => [:get]
 
  root :to => "pages#show"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end