Rails.application.routes.draw do 
  resources :movies   
  root :to => redirect('/movies')
  
  
  
  get  'auth/twitter/callback' => 'sessions#create',:as => 'login'
  post 'logout' => 'sessions#destroy' , as: 'logout'
  get  'auth/failure' => redirect('/')
  
end

