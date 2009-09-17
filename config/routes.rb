ActionController::Routing::Routes.draw do |map|
  map.resources :questions

	map.resources :wizards, :quizzes, :questions

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
