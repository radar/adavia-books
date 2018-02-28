Rails.application.routes.draw do
  defaults format: :json do
    post '/books', to: 'books#create'
  end
end
