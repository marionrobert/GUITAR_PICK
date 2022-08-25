class RentalsController < ApplicationController
  before_action :guitar_find, only: %i[new create]
  before_action :rental_find, only: %i[accept decline]

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.guitar = @guitar
    @rental.user = current_user
    @rental.status = "pending"
    if @rental.save!
      redirect_to dashboard_path, success: "You have successfully booked the #{@rental.guitar.name} guitar"
    else
      render :new, status: :unprocessable_entity, alert: "Something went wrong. Try again!"
    end
  end

  def accept
    @rental.status = "accepted"
    @rental.save
    redirect_to dashboard_path
  end

  def decline
    @rental.status = "declined"
    @rental.save
    redirect_to dashboard_path
  end

  private

  def rental_find
    @rental = Rental.find(params[:rental_id])
  end

  def guitar_find
    @guitar = Guitar.find(params[:guitar_id])
  end

  def rental_params
    params.require(:rental).permit(:starting_date, :end_date)
  end
end
