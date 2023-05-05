Rails.application.routes.draw do
  root "home#index"

  get "home/index"
  # Routes for aboutme
  match "/aboutme", to: "aboutme#index", as: :aboutme, via: :get

  # Routes for blog
  match "/blog", to: "blog_posts#index", as: :blog_posts, via: :get
  match "/blog/:title", to: "blog_posts#show", as: :blog_post, via: :get
end
