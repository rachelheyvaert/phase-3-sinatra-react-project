class TodosController < ApplicationController
# GET
get "/todos" do
    todos = Todo.all
    todos.to_json
end 

get "/todos/:id" do
    todo = Todo.find(params[:id])
   todo.to_json
end

post "/todos" do
    Todo.create(todo_params).to_json
end

patch "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.update(todo_params)
    todo.to_json
end

delete "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.destroy
end
end