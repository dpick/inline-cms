Cms::Application.routes.draw do
  get "images/upload_to_imgur"
  post "images/upload_to_imgur"

  root :to => "home#index"

  get "home/index"

  devise_for :users do
    get '/login'  => 'devise/sessions#new'
    get '/logout' => 'devise/sessions#destroy'
  end

  match 'textobject/save' => 'text_object#save'
  match 'admin' => 'admin#index'
end
