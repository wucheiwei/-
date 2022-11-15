Rails.application.routes.draw do
  get "/about" , to:"pages#about"
  get "/contact" , to:"pages#contact"
  get "wish_card_info/:id", to: "wish_list#show_wish" , as: "wish_card_info"
  get "/make_a_wish", to:"wish_list#card"
  get "/new_wish" , to:"wish_list#new_wish"
  post "/wish_card_list" , to:"wish_list#card_list"
  root "wish_list#card"
end
