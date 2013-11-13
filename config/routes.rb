SimpleBlog::Application.routes.draw do
  resources :posts do
    resources :comments and resources :comment
  end

  root "welcome#index"
end
