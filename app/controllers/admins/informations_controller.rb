class Admins::InformationsController < ApplicationController
	layout 'admins'
	before_action :authenticate_admin!

	def new
		@information = Information.new
	end

	def index
		@informations = Information.all
	end

	def show
		@information = Information.find(params[:id])
	end

	def edit
		@information = Information.find(params[:id])
	end

	def create
		@information = Information.new(information_params)
		if @information.save
		   flash[:notice] = "投稿完了"
		   redirect_to admins_information_path(@information.id)
		else
  		   render 'new'
  		end
	end

	def update
	end

	def destroy
	end

	def information_params
		params.require(:information).permit(
			:title,
			:content
			)
	end

end
