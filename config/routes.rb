Rottenpotatoes::Application.routes.draw do
  resources :movies
  match 'movies/:id/similar' => 'movies#similar'
  root :to => redirect('/movies')

  match '/add_lesson', :to => 'lessons#add_lesson'
  match '/lessons/:id', :to => 'lessons#show', :format => false
  resources :lessons do
    member do
      post 'upload'
    end
  end
end
