class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :item
      t.boolean :complete

      t.timestamps null: false
    end
  end
end
