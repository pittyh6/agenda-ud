Rails.application.routes.draw do
	
  #rotas iniciais, ao iniciar o prog
  get 'home/index' 
  get 'home/benvindo' => 'home#index' #passando a rota
  root 'home#index' #sem passar nada

  resources :phones
  resources :addresses
  resources :contacts
  resources :kinds #cria oito rotas de forma automatica
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
