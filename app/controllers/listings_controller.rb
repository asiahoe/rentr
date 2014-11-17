class ListingsController < ApplicationController
  def new
    @listing = Listing.new
  end

  def create
    listing = current_user.listings.build(listing_params)

    if listing.save
      redirect_to root_path
    else
      redirect_to :back
    end
  end

  private

  def listing_params
    params.require(:listing).permit(
    :name,
    :number_of_room,
    :kitchen,
    :price,
    :description,
    :url
    )
  end
end
