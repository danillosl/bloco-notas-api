Rails.application.routes.draw do
  get 'notas/index'

  get 'notas/new'

  get 'notas/create'

  get 'notas/edit'

  get 'notas/update'

  get 'notas/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
