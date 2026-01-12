Rails.application.routes.draw do
  get 'welcome/index'
  
  # Add this line below:
  root "welcome#index"
end