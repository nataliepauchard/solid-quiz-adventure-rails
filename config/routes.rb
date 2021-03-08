Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :topics
  resources :questions
  resources :answers
end
