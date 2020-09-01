Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get '/users/new', to: 'users#new', as: 'register'
  #get '/students/index', to: 'students#index', as: 'students'
  #get '/students/:id'
  
  get 'student/:id/activate', to: 'students#activate', as: 'activate_student'
  resources :students, only: [:index, :show]
end
