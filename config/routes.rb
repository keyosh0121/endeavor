Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/index' => 'home#index'
  get '/admin' => 'home#admin'
  post '/admin/upload' => 'home#save_article'

  get '/articles/:id' => 'home#show_article'
  get '/category/:id' => 'home#category_list'
  get '/tag/:id' => 'home#tag_list'
end
