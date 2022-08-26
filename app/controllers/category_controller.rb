class CategoriesController < ApplicationController
    
get '/categories' do
    @categories = Category.all
    @categories.to_json(include: [:todos])
end

end