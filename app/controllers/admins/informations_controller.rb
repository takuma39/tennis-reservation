class Admins::InformationsController < ApplicationController
	layout 'admins'
	before_action :authenticate_admin!

	def new
		@information = Information.new
	end

	def index
		@informations = Information.all.page(params[:page]).per(10)
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
		   redirect_to admins_informations_path
		else
  		   redirect_to request.referer
  		end
	end

	def update
		@information = Information.find(params[:id])
		if @information.update(information_params)
		   flash[:notice] = "更新完了"
			redirect_to admins_information_path(@information.id)
		else
			redirect_to request.referer
		end
	end

	def destroy
		@information = Information.find(params[:id])
		if @information.destroy
		   flash[:notice] = "削除完了"
		   redirect_to admins_informations_path
		else
			flash[:notice] = "削除失敗"
			redirect_to request.referer
		end
	end

	def information_params
		params.require(:information).permit(
			:title,
			:content
			)
	end

end
