class ListingsController < ApplicationController
  def new
    @listing = Listing.new
  end

  def create
    listing = current_user.listings.build(listing_params)

    if listing.save
      redirect_to listing
    else
      redirect_to :back
    end
  end

  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    if @listing.update(listing_params)
      redirect_to @listing
    else
      redirect_to :back
    end
  end

  def destroy
    listing = Listing.find(params[:id])
    listing.delete

    redirect_to listings_path
  end

  private

  def listing_params
    params.require(:listing).permit(
    :name,
    :number_of_room,
    :kitchen,
    :price,
    :description,
    :image_url
    )
  end
end
