Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: :destroy
end

# # get list of all cocktails
#   get "/cocktails", to: "cocktails#index"
# # show one cocktail
#   get "/cocktails/:id", to: "cocktails#show" , as: :cocktail
# # create new cocktail
#   get "/cocktails/new", to: "cocktails#new"
# # post the new cocktail in my database
#   post "/cocktails", to: "cocktails#create"
# # edit a cocktail
#   get "/cocktails/:id/edit", to: 'cocktails#edit'
# patch the edited cocktail as an update on the origin in my database
#   patch "cocktails/:id", to: 'cocktails#update'
# # delete a cocktail
#   delete "/cocktails/:id", to: "cocktails#destroy"
# terminal command creating controllers
# rails g controller doses


