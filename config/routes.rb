Rails.application.routes.draw do
  root to: "landing#index", as: :landing
  get '/break', to: 'break#break', as: :break
  get '/:id', to: "data#index", as: :index
end
