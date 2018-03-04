class RidesController < ApplicationController

  def create
    ride = Ride.create(:user_id => current_user.id, :attraction_id => params[:ride][:attraction_id])
    ride.take_ride
    @message = "Thanks for riding the #{Attraction.find(ride.attraction_id)}!"
    render "/users/show"
  end

end
