class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :name
      t.text :details
      t.integer :category_id
      t.timestamps
    end
  end
end
