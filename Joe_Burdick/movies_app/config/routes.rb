MoviesApp::Application.routes.draw do
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout' } #override/change default paths (rake routes)

  get "search", to: 'search#index'
  root "movies#index"
  resources :movies

end
