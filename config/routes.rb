CrudApp::Application.routes.draw do
  resources :authors do 
    resources :books do
      resources :words
    end
  end

  root :to => 'authors#index' 
end
