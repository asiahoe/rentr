class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.string :kitchen, :boolean, default: false
      t.string :number_of_room, null: false
      t.string :description, null: false
      t.references :user, null: false

      t.timestamps
    end
  end
end
