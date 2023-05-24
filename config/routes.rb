Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/restaurants", to: "restaurants#index"
  # get "/restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"
  # get "restaurants/:id", to: "restaurants#show"
  # get "/restaurants/:restaurant_id/reviews/new", to: "rewiews#new"
  # post "review", to: "reviews#create"

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end

# restaurant_reviews POST   /restaurants/:restaurant_id/reviews(.:format)     reviews#create
#             new_restaurant_review GET    /restaurants/:restaurant_id/reviews/new(.:format) reviews#new
#                       restaurants GET    /restaurants(.:format)                            restaurants#index
#                                   POST   /restaurants(.:format)                            restaurants#create
#                    new_restaurant GET    /restaurants/new(.:format)                        restaurants#new
#                   edit_restaurant GET    /restaurants/:id/edit(.:format)                   restaurants#edit
#                        restaurant GET    /restaurants/:id(.:format)                        restaurants#show
#                                   PATCH  /restaurants/:id(.:format)                        restaurants#update
#                                   PUT    /restaurants/:id(.:format)                        restaurants#update
#                                   DELETE /restaurants/:id(.:format)                        restaurants#destroy
