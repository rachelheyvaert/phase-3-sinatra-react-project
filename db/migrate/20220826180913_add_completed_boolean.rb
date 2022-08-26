class AddCompletedBoolean < ActiveRecord::Migration[6.1]
  def change
    add_column :todos, :completed, :boolean
  end
end
