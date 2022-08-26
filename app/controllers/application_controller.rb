class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/categories" do
    categories = Category.all
    categories.to_json
end 
  
  get '/todos/:id' do
    todo = Todo.find(params[:id])
    todo.to_json(include: :category)
  end

  get '/todos/by_oldest' do
   todo = Todo.by_oldest
  todo.to_json
  end


end
