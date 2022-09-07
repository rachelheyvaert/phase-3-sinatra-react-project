class CategoriesController < ApplicationController
#show
    get '/categories' do
        categories = Category.all
        categories.to_json
    end
#create
    post '/categories' do
     cat = Category.create(params)
     cat.to_json
    end

end
