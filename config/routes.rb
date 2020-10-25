Rails.application.routes.draw do
  get 'ranking/get', to: 'ranking#get'
  post 'ranking/set'
end
