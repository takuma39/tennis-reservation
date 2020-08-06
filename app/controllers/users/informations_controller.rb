class Users::InformationsController < ApplicationController
	layout 'users'
	before_action :authenticate_user!

	def index
		@informations = Information.all.page(params[:page]).per(10)
	end

	def show
		@information = Information.find(params[:id])
	end
end
