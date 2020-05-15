Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources "contacts", only: [:create]
  post "send_contact" => "pages#send_contact"
end
