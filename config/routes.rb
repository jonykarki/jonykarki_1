Rails.application.routes.draw do
  
  devise_for :users
  #make index.html the default page
  root 'pages#index'
end
