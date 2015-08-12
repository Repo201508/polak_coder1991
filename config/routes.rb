Rails.application.routes.draw do
  

root 'home#index'


resources :tatuers 
	resources :reviews
		resources :products 

  

  

  
end
