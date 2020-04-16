Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/schedule', to: 'schedules#index'
  # get '/sched', to: 'schedules#each_day_in_month'
end
