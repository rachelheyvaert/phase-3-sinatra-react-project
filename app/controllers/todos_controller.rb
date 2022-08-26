class TodosController < ApplicationController
get "/todos" do
    todos = Todo.all
    todos.to_json
end 


post "/todos" do
todo = Todo.new(params[:todo])
if todo.save
    todo.to_json
else
    {erros: todo.errors.full_message }.to_json
end
end

end