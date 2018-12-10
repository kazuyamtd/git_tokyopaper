Rails.application.routes.draw do
  
  resources :categories do
      resources :subcategories
  end
  
  resources :listings do
    collection do
      get 'search'
    end
  end
  
  root 'categories#index'
  
  match '/help', to: 'pages#help', via: :get
  match '/scams', to: 'pages#scams', via: :get
  
  match 'subcategories/find_by_category', to: 'subcategories#find_by_category', via: :post
  
end
