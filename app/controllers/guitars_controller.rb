class GuitarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_guitar, only: [:show, :destroy, :edit, :update]

  def index
    if params[:query].present?
      @guitars = Guitar.search_by_name_and_brand_and_category_and_description_and_address("%#{params[:query]}%")
    else
      @guitars = Guitar.all
    end
  # The `geocoded` scope filters only guitars with coordinates
    @markers = @guitars.geocoded.map do |guitar|
    {
      lat: guitar.latitude,
      lng: guitar.longitude
    }
    end
  end

  def show
    @rental = Rental.new
  end

  def new
    @guitar = Guitar.new
  end

  def create
    @guitar = Guitar.new(guitar_params)

    @guitar.user = current_user

    if @guitar.save
      redirect_to guitar_path(@guitar)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @guitar.update(guitar_params)
      redirect_to guitar_path, notice: "Guitar was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @guitar.destroy
    redirect_to guitars_path, status: :see_other
  end


  private

  def set_guitar
    @guitar = Guitar.find(params[:id])
  end

  def guitar_params
    params.require(:guitar).permit(:name, :photo, :brand, :description, :category, :address, :daily_price)
  end
end
