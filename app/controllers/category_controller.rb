class CategoriesController < ApplicationController
    
    get '/categories' do
        categories = Category.all
        categories.to_json
    end

    post '/categories' do
        Category.create(category_params).to_json
    end
end
