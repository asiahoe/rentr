class ChangeUserTableUrlToImageUrl < ActiveRecord::Migration
  def change
    rename_column :users, :url, :image_url
    rename_column :listings, :url, :image_url
  end
end
