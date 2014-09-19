Rails.application.routes.draw do

  resources :questions, only: [ :new, :create, :index, :show ] do
    resources :answers, only: [ :create ]
  end

end
