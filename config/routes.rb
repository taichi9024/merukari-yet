Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :admin do
    root "top#index"
  end

  namespace :customer, path:"" do
    root "top#index"
  end
  
  get "*hogehoge", to: "errors#index"
end
