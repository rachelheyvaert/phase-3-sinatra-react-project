class TodosController < ApplicationController
# GET
get "/todos" do
    format_as_json(Todo.all)
end 

get "/todos/:id" do
    todo = Todo.find(params[:id])
    format_as_json(todo)
end

post "/todos" do
    format_as_json(Todo.create(todo_params))
end

patch "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.update(todo_params)
    format_as_json(todo)
end

delete "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.destroy
    format_as_json(todo)
end
end