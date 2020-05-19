Rails.application.routes.draw do
  resources :interviewers
  resources :applicants
  resources :meetings
  get '/interviewers/:id/schedule', to: "interviewers#schedule"
  post '/interviewers/:id/schedule', to: "interviewers#create_meeting"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/", to: "application#index"

end
