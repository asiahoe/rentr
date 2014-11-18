class Listing < ActiveRecord::Base
  validates :description, presence: true
  validates :image_url, presence: true
  validates :name, presence: true
  validates :number_of_room, presence: true
  validates :price, presence: true
  validates :user_id, presence: true

  belongs_to :user
end
