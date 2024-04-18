class TripsController < ApplicationController
  def index
    @trips = Trip.all.order(:id)
    render json: trips
  end
end
