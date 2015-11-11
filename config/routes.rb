MotoWebEngine::Engine.routes.draw do

  resources :runs
  resources :tests

  scope '/api' do
    resources :runs, controller: :api_runs, defaults: {format: :json}
    resources :tests, controller: :api_tests, defaults: {format: :json}
  end  

end
