class GuitarsController < ApplicationController
  before_action :set_guitar, only: [:show, :destroy, :edit, :update]

  def index
    @guitars = Guitar.all
  end

  def show
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
    params.require(:guitar).permit(:name, :photo, :brand, :description, :category, :location, :daily_price)
  end
end
