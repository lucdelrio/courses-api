Rails.application.routes.draw do
  resources :teachers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v1, path: 'api/v1', defaults: { format: 'json' } do
    resources :teachers do
      collection do
      end
    end

    resources :students do
      collection do
      end
    end
  end
end
