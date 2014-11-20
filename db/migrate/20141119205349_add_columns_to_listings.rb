class AddColumnsToListings < ActiveRecord::Migration
  def change
    add_column :listings, :tv, :boolean
    add_column :listings, :essentials, :boolean
    add_column :listings, :shampoo, :boolean
    add_column :listings, :heating, :boolean
    add_column :listings, :conditioning, :boolean
    add_column :listings, :washer, :boolean
    add_column :listings, :indoor_fireplace, :boolean
    add_column :listings, :dryer, :boolean
    add_column :listings, :internet, :boolean
  end
end
