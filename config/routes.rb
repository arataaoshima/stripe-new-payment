Rails.application.routes.draw do
  root 'home#top'
  get 'pages/payment'
  get 'pages/success'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
