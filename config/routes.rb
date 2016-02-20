Rails.application.routes.draw do
  root to: "landing#index", as: :landing
  get 'index', to: "data#index", as: :index
  get 'giveUserData/:id', to: "data#giveUserData", as: :giveUserData
end
