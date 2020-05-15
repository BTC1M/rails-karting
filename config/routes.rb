Rails.application.routes.draw do
  root to: 'pages#home'

  #resources "pages", only: [:new, :create]
  resources "contacts", only: [:create]
end
