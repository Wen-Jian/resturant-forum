Rails.application.routes.draw do
  devise_for :users,path:'',path_names: {sign_in:'login',sign_out:'logout',sign_up:'register'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  
  resources :resturants do

  	resources :blogs do

      resources :comments

    end

  end

  resources :users, only: [:show]

  root "resturants#index"


  mount ActionCable.server => '/cable'

  resources :chatrooms
  resources :messages


end
