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
        resources :users, only:[:index, :show, :edit, :update]do
            member do
                resources :my_reservations, only:[:index, :show, :update]
                # get 'reservation/:id' => 'my_reservations#show'
                # patch 'reservation/:id' => 'my_reservations#update'
            end
        end
        get 'search' => 'users#search'

        resources :tennis_courts, only:[:index, :show, :update]
        resources :reservations, param: :date, only:[:index, :show, :edit, :update, :create]
    end

#---------------------------------------------------

    namespace :users do
        root 'homes#top'
        resources :users, only:[:show, :edit, :update]do
            member do
                get :delete, as: :delete
                patch :active, as: :active
                resources :my_reservations, only:[:index, :show, :update]
                # get 'reservation/:id' => 'my_reservations#show'
                # patch ':reservation/:id' => 'my_reservations#update'
            end
        end
        # get 'user/:id/reservation/:id' => 'my_reservations#show'
        resources :reservations, param: :date, only:[:index, :show, :create]do
            member do
                get :confirm, as: :confirm
                get :complete, as: :complete
            end
        end
    end

#---------------------------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
