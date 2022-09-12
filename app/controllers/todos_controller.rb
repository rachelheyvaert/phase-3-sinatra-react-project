require 'pry'
class TodosController < ApplicationController
# GET
    get "/todos" do
        todos = Todo.order(:name)
        todos.to_json(include: :category)
    end 

    post "/todos" do
        category = Category.find_by(id: params[:category_id])
        todo = category.todos.create(params)
        todo.to_json
    end

    patch "/todos/:id" do
        category = Category.find_by(id: params[:category_id])
        todo = category.todos.find_by(id: params[:id])
        todo.update(
            name: params[:name],
            details: params[:details],
            completed: params[false],
        )
        todo.category = category
        todo.save
        todo.to_json
    end

    delete "/todos/:id" do
        todo = Todo.find_by(params[:id])
        todo.destroy
        todo.to_json
    end
end

