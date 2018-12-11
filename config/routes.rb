Rails.application.routes.draw do
  resources :projects do
  	member do
  		get 'people_avail'
      post 'add_people'
      delete 'remv_people'
    end
  end
  resources :people
  root 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
