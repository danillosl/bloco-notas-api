Rails.application.routes.draw do
  resources :notas do
    collection do
      get 'status'
    end 
  end

end
