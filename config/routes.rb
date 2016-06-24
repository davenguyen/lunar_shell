LunarShell::Engine.routes.draw do
  namespace :satellites do
    resources :passwd, only: [:update] do
      member do
        patch 'confirm', to: 'passwd#confirm'
        patch 'new', to: 'passwd#new', as: :new
      end
    end
    resource :su, only: [:create]

    post '*error', to: 'satellites#error'
    post :run
  end

  root 'shells#show'
end
