
Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Create
  get '/restaurants/new', to: 'restaurants#new'
  post '/restaurants', to: 'restaurants#create', as: :create_restaurants


# Read
get '/restaurants', to: 'restaurants#index'
get '/restaurants/:id', to: 'restaurants#show', as: 'restaurants_show'
post '/restaurants/:restaurant_id/review', to: 'reviews#create', as: 'restaurant_reviews'


# The index is the list of many records

# Get « /loans », to: « loans# index »

# Show a specific loan based on the id
# Get « /loans /:id», to: « loans# show »


# Updates

# Get « /loans /:id/edit», to: « loans# edit»
# Patch « /loans /:id», to: « loans# update»


# Delete
# delete 'restaurants/:restaurant_id', to: 'restaurants#destroy', as 'restaurant_delete'

# Delete « /loans /:id», to: « loans# delete»

end
