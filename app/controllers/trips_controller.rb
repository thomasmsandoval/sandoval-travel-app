class TripsController < ApplicationController
  def index
    @trips = Trip.all
    render :index
  end

  def create
    @trip = Trip.create(
      user_id: params[:user_id],
      title: params[:title],
      image_url: params[:image_url],
      start_time: params[:start_time],
      end_time: params[:end_time],
    )
    render :show
  end

  def show
    @trip = Trip.includes(:places).find_by(id: params[:id])
    render json: @trip, include: :places
  end

  def update
    @trip = Trip.find_by(id: params[:id])
    @trip.update(
      user_id: params[:user_id] || @trip.user_id,
      title: params[:title] || @trip.title,
      image_url: params[:image_url] || @trip.image_url,
      start_time: params[:start_time] || @trip.start_time,
      end_time: params[:end_time] || @trip.end_time,
    )
    render :show
  end

  def destroy
    @trip = Trip.find_by(id: params[:id])
    @trip.destroy
    render json: { message: "We ain't goin' on this trip!" }
  end
end
