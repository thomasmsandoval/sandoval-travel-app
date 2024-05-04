class PlacesController < ApplicationController
  def index
    pp current_user
    @places = Place.all
    render :index
  end

  def create
    @place = Place.create(
      trip_id: params[:trip_id],
      address: params[:address],
      name: params[:name],
      description: params[:description],
      image_url: params[:image_url],
      start_time: params[:start_time],
      end_time: params[:end_time],
    )
    if @place.valid?
      render :show
    else
      render json: { errors: @place.errors.full_messages }, status: 422
    end
  end

  def show
    @place = Place.find_by(id: params[:id])
    render json: @place
  end

  def index_by_trip
    trip = Trip.find(params[:trip_id])
    places = trip.places
    render json: places
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Trip not found" }, status: :not_found
  end
end
