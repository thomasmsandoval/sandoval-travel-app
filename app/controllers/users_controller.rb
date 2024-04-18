class UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password_digest: params[:password],
      image_url: params[:image_url],
    )
    if user.save
      render json: { message: "User successfully created" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
