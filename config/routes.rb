Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v1, path: 'api/v1', defaults: { format: 'json' } do
    resources :teachers do
      collection do
        post :correct_exam
      end
    end

    resources :students do
      collection do
      end
    end

    resources :courses do
      collection do
        get :status
        get :student_status
      end
    end
  end
end
