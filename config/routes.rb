Rottenpotatoes::Application.routes.draw do

  root "movies#index"
  get 'movies/same_director'
   resources :movies
  # # map '/' to be a redirect to '/movies'
  # root :to => redirect('/movies')




end


