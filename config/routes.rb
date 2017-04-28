Rails.application.routes.draw do
  resources :notas do
    collection do
      get 'status'
      get 'search/:search', to: 'notas#search'
      get 'search', to: 'notas#search'
    end 
  end

end
