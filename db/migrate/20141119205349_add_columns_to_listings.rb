class AddColumnsToListings < ActiveRecord::Migration
  def change
    add_column :listings, :tv, :boolean, default: false
    add_column :listings, :essentials, :boolean, default: false
    add_column :listings, :shampoo, :boolean, default: false
    add_column :listings, :heating, :boolean, default: false
    add_column :listings, :conditioning, :boolean, default: false
    add_column :listings, :washer, :boolean, default: false
    add_column :listings, :indoor_fireplace, :boolean, default: false
    add_column :listings, :dryer, :boolean, default: false
    add_column :listings, :internet, :boolean, default: false
  end
end
