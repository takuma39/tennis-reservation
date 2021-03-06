class Users::InformationsController < ApplicationController
	layout 'users'

	def index
		@informations = Information.all.page(params[:page]).per(10).order(created_at: :desc)
	end

	def show
		@information = Information.find(params[:id])
	end
end
