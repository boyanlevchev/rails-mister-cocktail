Rails.application.routes.draw do

  root to: 'cocktails#index'

  resources :cocktails, only: [:show, :new, :create, :destroy] do
    resources :doses, only: [:create, :update]
  end
  resources :doses, only: :destroy


  # users need to see cocktails
  # Users need to see a specific cocktail
  # users can create a new cocktail


  # users can add a new doses
  # users can delete a doses

  # ingredients are hard coded by programmer - so not a user function

end
