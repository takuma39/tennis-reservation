class Users::ReservationsController < ApplicationController
	layout 'users'
	before_action :authenticate_user!, only: [:confirm, :complete]
	def index
	end

	def show
	end

	def confirm
	end

	def complete
	end

	def create
	end

end
