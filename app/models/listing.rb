class Listing < ActiveRecord::Base
  validates :name, presence: true
  validates :price, presence: true
  validates :number_of_room, presence: true
  validates :description, presence: true
  validates :url, presence: true
  validates :user_id, presence: true

  belongs_to :user
end
