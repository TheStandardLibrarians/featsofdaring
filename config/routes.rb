Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  namespace :stdlib do 
    get :chapters  
    get :about
    get :team
    get :mobbing
    get :agile
    get :testing
    get :rgsoc
    get :userstories
    get :goals
  end
 
 namespace :chapters do
   get :http
   get :math
   get :time
   get :database
   get :encoding
   get :exceptions
   get :read
   get :dsl
   get :gui
   get :commandline
   get :patterns
   get :methods
   get :threads
   get :core
   get :objective2
   get :objective3
 end


  resources :adventures, only: []  do
    member do
      get :story
    end
    resources :objectives, only: [] do
      member do
        get :learn
        get :review
        post :repl
      end
    end  
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
