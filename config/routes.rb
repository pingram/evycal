Rails.application.routes.draw do
  root to: 'events#new'

  get 'events/index'
  get 'events/new'
  get 'events/create'
end
