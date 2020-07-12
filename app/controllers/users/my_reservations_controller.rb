class Users::MyReservationsController < ApplicationController
	layout 'users'
	before_action :authenticate_user!

	def index
		@user = User.find(params[:id])
		@reservations = Reservation.where(user_id: @user.id)
	end

	def show
		@user = User.find(params[:id])
	end

	def update
	end

end
