class RentalController < ApplicationController
  before_action :guitar_find, only: %i[new create]
  before_action :rental_find, only: %i[accept decline]

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.guitar = @guitar
    @rental.user = current_user
    if @rental.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def accept
    @rental.status = "validated"
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
    @rental = Rental.find(params[:id])
  end

  def guitar_find
    @guitar = Guitar.find(params[:guitar_id])
  end

  def rental_params
    params.require(:rental).permit(:starting_date, :ending_date)
    # ne pas oublier de mettre un validates status avec une valeur par defaut à nil ou pending
  end
end
