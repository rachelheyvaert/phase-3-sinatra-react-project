class Category < ActiveRecord::Base
has_many :todos


def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
   end
   
end