class PlacesController < ApplicationController
  def create
    @trip = current_user.trips.find(params[:trip_id])
    @place = @trip.places.new(place_params)

    if @place.save
      render json: { message: "Place successfully created." }, status: :created
    else
      render json: { errors: place.errors.full_messages }, status: :bad_request
    end
  end
end
