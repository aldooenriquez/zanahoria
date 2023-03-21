Rails.application.routes.draw do
  root "home#index"

  get "home/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Routes for blog
  match "/blog", to: "blog_posts#index", as: :blog_posts, via: :get
  match "/blog/:title", to: "blog_posts#show", as: :blog_post, via: :get
end
