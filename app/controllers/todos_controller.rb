require 'pry'
class TodosController < ApplicationController

    get "/todos" do
        todos = Todo.order(:name)
        todos.to_json(include: :category)
    end 

    get "/todos/:id" do
        todo = Todo.find_by(id: params[:id])
        todo.to_json
    end

    post "/todos" do
        category = Category.find_by(id: params[:category_id])
        todo = category.todos.create(params)
        todo.to_json
    end

    patch "/todos/:id" do
        # binding.pry
        # category = Category.find_by(id: params[:todo][:category_id])
        todo = Todo.find_by(id: params[:id].to_i)
        # binding.pry
        todo.update(
            name: params[:name],
            details: params[:details],
            completed: false,
            category_id: params[:category_id].to_i
        )
        # todo.category = category
        # category.update(
        #     title: params[:title]
        # )
        todo.save
        todo.to_json
   
    end

    delete "/todos/:id" do
        todo = Todo.find_by(params[:id])
        todo.destroy
        todo.to_json
    end
end

