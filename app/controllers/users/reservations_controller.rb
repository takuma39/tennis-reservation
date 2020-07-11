class Users::ReservationsController < ApplicationController
	layout 'users'
	before_action :authenticate_user!, only: [:confirm, :complete]
	def index
	end

	def show
		@day = params[:date]
	end


	def confirm
		@day = params[:date]
	end

	def complete
		@day = params[:date]
	end

	def create
	end

end
