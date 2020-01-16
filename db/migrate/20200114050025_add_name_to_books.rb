class AddNameToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :name, :string
    add_index :books, :name, unique: true
  end
end
