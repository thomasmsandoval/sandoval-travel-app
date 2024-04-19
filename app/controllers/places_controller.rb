class PlacesController < ApplicationController
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
end
