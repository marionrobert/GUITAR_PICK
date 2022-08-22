class RentalController < ApplicationController
  def new
    @rental = Rental.new
    @guitar = Guitar.find(params[:guitar_id])
  end

  def create
    @rental = Rental.new(rental_params)
    @guitar = Guitar.find(params[:guitar_id])
    @user = User.find(params[:rental][:user_id])
    @rental.guitar = @guitar
    @rental.user = @user
    if @rental.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def accept
    @rental = Rental.find(params[:id])
    @rental.status = "validated"
    @rental.save
    redirect_to dashboard_path
  end

  def decline
    @rental = Rental.find(params[:id])
    @rental.status = "declined"
    @rental.save
    redirect_to dashboard_path
  end

  private

  def rental_params
    params.require(:rental).permit(:starting_date, :ending_date)
    # ne pas oublier de mettre un validates status avec une valeur par defaut à nil ou pending
  end
end
