Rails.application.routes.draw do
  
#get 'contact', to: 'contacts#form'
#post 'contacts/new', to: 'contacts#new', as: 'new_contact'
#post 'contacts/create', to: 'contacts#create', as: 'contacts'
resources :contacts

resources :surveys do
  get 'answers', on: :member
end


devise_for :admins


#te linie doszly po wygenerowaniu ErrorsController
get 'errors/file_not_found'
get 'errors/unprocessable'
get 'errors/internal_server_error'


root 'home#index'
get 'about/index', as: "about"
  

devise_for :users, :controllers => { omniauth_callbacks: "users/omniauth_callbacks"}


resources :tatuers 
	resources :reviews
		resources :products do
			member do
				get 'show_details', as: 'show'
			end
		end


resources :orders do
	collection do
		get 'my_orders', as: 'my'
	end
end


  #w application.rb jest link na podstawie ktorego sie te linie tu znalazly
  #via: :all oznacza ze dana sciezka jest dla wszystkich metod protokolu http
  #match oznacza przyporzadkowanie danego bledu do danej akcji kontrolera
  match '/404', to: 'errors#file_not_found', via: :all
  match '/422', to: 'errors#unprocessable', via: :all
  match '/500', to: 'errors#internal_server_error', via: :all

  

  
end
