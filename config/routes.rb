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




#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                like_link PUT    /links/:id/like(.:format)      links#upvote
#             dislike_link PUT    /links/:id/dislike(.:format)   links#downvote
#                    links GET    /links(.:format)               links#index
#                          POST   /links(.:format)               links#create
#                 new_link GET    /links/new(.:format)           links#new
#                edit_link GET    /links/:id/edit(.:format)      links#edit
#                     link GET    /links/:id(.:format)           links#show
#                          PATCH  /links/:id(.:format)           links#update
#                          PUT    /links/:id(.:format)           links#update
#                          DELETE /links/:id(.:format)           links#destroy
#                     root GET    /                              links#index
