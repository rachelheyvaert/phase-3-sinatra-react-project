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
        todo = Todo.create(params)
        todo.to_json
    end

    patch "/todos/:id" do
        todo = Todo.find(params[:id])
        todo.update(
            name: params[:name],
            details: params[:details],
            category_id: params[:category_id]
        )
        todo.to_json
    end

    delete "/todos/:id" do
        todo = Todo.find(params[:id])
        todo.destroy
        todo.to_json
    end
end