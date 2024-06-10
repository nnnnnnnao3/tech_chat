Rails.application.routes.draw do
  get 'answers/create'
  root to: 'questions#index'
  resources :questions, only: [:index, :new, :create, :show] do
    resources :answers, only: :create
  end
end