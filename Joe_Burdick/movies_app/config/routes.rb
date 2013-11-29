MoviesApp::Application.routes.draw do
  get "search", to: 'search#index'
  
  
  root "movies#index"
  #resources :movies

  #get '/:id', to: 'movies#show'
end
