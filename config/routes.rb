Rails.application.routes.draw do
  resources :questions, only: [:show] do 
    member do 
      get :result
    end

    resources :open_text_answers,     only: [:create]
    resources :multi_choice_answers,  only: [:create]
    resources :scale_answers,         only: [:create]
  end
end
