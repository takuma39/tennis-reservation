Rails.application.routes.draw do

	devise_for :admins, controllers: {
		sessions:      'admins/sessions',
		passwords:     'admins/passwords',
	}

    devise_scope :admins do
		get 'admins/sign_in' => 'admins/sessions#create'
		get 'admins/sign_out' => 'admins/sessions#destroy'
    end

#---------------------------------------------------

	devise_for :users, controllers: {
	  	sessions:      'users/sessions',
	  	passwords:     'users/passwords',
	  	registrations: 'users/registrations'
	}

    devise_scope :users do
		get 'users/sign_in' => 'users/sessions#create'
		get 'users/sign_out' => 'users/sessions#destroy'
    end

#---------------------------------------------------

    namespace :admins do
    	root 'homes#top'
    	resources :users, only:[:index, :show, :edit, :update]
		get 'search' => 'users#search'

    	resources :tennis_courts, only:[:index, :show, :update]
    	resources :reservations, only:[:index, :show, :edit, :update]
    	patch 'admins/reservations/allupdate' => 'admins/reservations#allupdate'
    	resources :my_reservations, only:[:index, :show, :update]
	end

#---------------------------------------------------

    namespace :users do
    	root 'homes#top'
    	resources :users, only:[:show, :edit, :update]do
			member do
				get :delete, as: :delete
				patch :active, as: :active
			end
		end
    	resources :reservations, only:[:index, :show, :confirm, :create]do
    		member do
				get :confirm, as: :confirm
				get :complete, as: :complete
			end
		end
    	resources :my_reservations, only:[:index, :show, :update]
	end

#---------------------------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
