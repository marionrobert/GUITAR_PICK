class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  def dashboard
    @user = current_user

    @owner_rentals = @user.guitars.map { |guitar| guitar.rentals }.flatten
    @owner_pending_rentals = @owner_rentals.select{|rental| rental.status == "pending"}
    @owner_accepted_rentals = @owner_rentals.select{|rental| rental.status == "accepted"}
    @owner_declined_rentals = @owner_rentals.select{|rental| rental.status == "declined"}

    @renter_rentals = current_user.rentals
    @renter_pending_rentals = @renter_rentals.where(status: "pending")
    @renter_accepted_rentals = @renter_rentals.where(status: "accepted")
    @renter_declined_rentals = @renter_rentals.where(status: "declined")

  end

end
