EmberTester::Application.routes.draw do
  get "ember/start"
  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end

  root "ember#start"
end
