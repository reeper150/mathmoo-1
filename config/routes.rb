Rottenpotatoes::Application.routes.draw do
  root :to  => 'games#index'
  resources :games do
    member do
      post 'upload'
    end
  end
  match '/add_game', :to => 'games#add_game'
  match '/games/:id', :to => 'games#show', :format => false

  match '/add_lesson', :to => 'lessons#add_lesson'
  match '/lessons/:id', :to => 'lessons#show', :format => false
  resources :lessons do
    member do
      post 'upload'
    end
  end
  resources :frontpages
  match '/choose_feature', :to => 'frontpages#choose_feature'
end
