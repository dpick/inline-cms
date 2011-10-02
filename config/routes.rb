Cms::Application.routes.draw do
  root :to => "home#index"

  get "home/index"

  devise_for :users do
    get '/login'  => 'devise/sessions#new'
    get '/logout' => 'devise/sessions#destroy'
  end

  match 'textobject/save' => 'text_object#save'
end
