MiniApp::Application.routes.draw do

  namespace :admin do
    resources :products
    resources :orders
  end

end
