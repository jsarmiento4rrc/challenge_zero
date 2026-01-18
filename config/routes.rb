Rails.application.routes.draw do
  get 'welcome/index'
  root "welcome#index" # Add this line
end