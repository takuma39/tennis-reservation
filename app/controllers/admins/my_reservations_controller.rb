class Admins::MyReservationsController < ApplicationController
	layout 'admins'
	before_action :authenticate_admin!

	def index
		@user = User.find(params[:id])
	end

	def show
		@user = User.find(params[:id])
	end

	def update
	end

end
