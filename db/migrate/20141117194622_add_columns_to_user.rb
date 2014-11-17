class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :url, :string
    add_column :users, :bio, :string
  end
end
