class Admins::ReservationsController < ApplicationController
	layout 'admins'
	before_action :authenticate_admin!

	def index



	end

	def show
		@day = params[:date]
	end

	def edit
		@day = params[:date]
	end

	def update
	end

	def allupdate
	end

end
