class ListingsController < ApplicationController
  before_action :check_user, only: [:update, :edit, :destroy]
  before_action :keep_link_back_url, only: [:edit, :destroy, :new]

  def new
    @listing = Listing.new
  end

  def create
    @listing = current_user.listings.build(listing_params)

    if @listing.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @listings = Listing.all
  end

  def show
    listing
  end

  def edit
    listing
  end

  def update
    listing

    if @listing.update(listing_params)
      redirect_to @listing
    else
      redirect_to :back
    end
  end

  def destroy
    listing.destroy

    redirect_to listings_path
  end

  private

  def check_user
    unless listing.user == current_user
      render status: 401
    end
  end

  def listing_params
    params.require(:listing).permit(
    :name,
    :number_of_room,
    :kitchen,
    :internet,
    :tv,
    :essentials,
    :shampoo,
    :heating,
    :conditioning,
    :washer,
    :dryer,
    :indoor_fireplace,
    :price,
    :description,
    :image_url
    )
  end

  def listing
    @listing ||= Listing.find(params[:id])
  end
end
