Rails.application.routes.draw do
  # get 'doses/index'
  # get 'doses/show'
  # get 'doses/new'
  # get 'doses/create'
  # get 'doses/edit'
  # get 'doses/update'
  # get 'doses/destroy'
  # get 'cocktails/index'
  # get 'cocktails/show'
  # get 'cocktails/new'
  # get 'cocktails/create'
  # get 'cocktails/edit'
  # get 'cocktails/update'
  # get 'cocktails/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    resources :doses, only: [:index, :show, :new, :create, :edit, :update]
  end
  resources :doses, only: :destroy


  # users need to see cocktails
  # Users need to see a specific cocktail
  # users can create a new cocktail


  # users can add a new doses
  # users can delete a doses

  # ingredients are hard coded by programmer - so not a user function

end
