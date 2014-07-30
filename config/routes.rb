Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'
  
  resources :adventures do
    resources :objectives
  end
 #    resources 
 # match '/prettyp', to: 'status#prettyp', via: 'get'
 # resources :status do
 #   collection do
 #   get 'prettyp', to: 'status#prettyp'
 #     end
 #  end
  
  get '/prettyp' => 'status#prettyp'
end
