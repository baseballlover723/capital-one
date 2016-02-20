Rails.application.routes.draw do
  root to: "landing#index", as: :landing
  get '/:id', to: "data#index", as: :index
end
