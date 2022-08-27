class CategoriesController < ApplicationController
    
get '/categories' do
    @categories = Category.all
    @categories.to_json(include: [:todos])
end

post '/categories' do
    format_as_json(Category.create(category_params))
end
end
