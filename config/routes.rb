Rails.application.routes.draw do
  get "/about" , to:"pages#about"
  get "/contact" , to:"pages#contact"
  # get "/" ,to:"pages#home"
  root "pages#home"
end
