Rails.application.routes.draw do

  devise_for :users
  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
  end

  resources :links do
    member do
      put "like", to: "links#upvote"
      put "dislike", to: "links#downvote"
    end
  end

  root 'links#index'

end


