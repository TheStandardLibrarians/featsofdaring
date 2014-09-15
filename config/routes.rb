Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  get "stdlib/chapters"  
  get "stdlib/about"
  get "stdlib/about"
  get "stdlib/team"
  get "stdlib/mobbing"
  get "stdlib/agile"
  get "stdlib/testing"
  get "stdlib/rgsoc"
  get "stdlib/userstories"
  get "stdlib/goals"

  get "chapters/http"
  get "chapters/math"
  get "chapters/time"
  get "chapters/database"
  get "chapters/encoding"
  get "chapters/exceptions"
  get "chapters/read"
  get "chapters/dsl"
  get "chapters/gui"
  get "chapters/commandline"
  get "chapters/patterns"
  get "chapters/methods"
  get "chapters/threads"
  get "chapters/core"

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
