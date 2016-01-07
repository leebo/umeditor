Rails.application.routes.draw do
  root 'home#index'
  mount Umeditor::Engine => "/"
end
