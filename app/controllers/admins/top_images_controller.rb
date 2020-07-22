class Admins::TopImagesController < ApplicationController
	layout 'admins'
	before_action :authenticate_admin!

	def index
		@topimages = TopImage.all
		@topimage = TopImage.new
	end

	def show
		@topimage = TopImage.find(params[:id])
	end

	def create
		@topimage = TopImage.new(topimage_params)
		if @topimage.save
        	flash[:notice] = "追加完了"
			redirect_to admins_top_images_path
		else
        	flash[:notice] = "追加失敗"
			redirect_to admins_top_images_path
		end
	end


	def update
		@topimage = TopImage.find(params[:id])
		@topimage.top_status = params[:top_status]
      if @topimage.save
        flash[:notice] = "更新完了"
        redirect_to admins_top_images_path
      else
      	flash[:notice] = "更新失敗"
        render :show
      end
	end

	def destroy
		@topimage = TopImage.find(params[:id])
      if @topimage.destroy
        flash[:notice] = "削除完了"
        redirect_to admins_top_images_path
      else
      	flash[:notice] = "削除失敗"
        render :show
      end
	end

  private
  def topimage_params
    params.require(:top_image).permit(
      :top_image,
      :top_status
      )
  end
end
