Rails.application.routes.draw do

  #get 'staticpages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "staticpages#home"


  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             }
end
