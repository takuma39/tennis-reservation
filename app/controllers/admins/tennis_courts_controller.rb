class Admins::TennisCourtsController < ApplicationController
	layout 'admins'
	before_action :authenticate_admin!

	def index
		@court1 = TennisCourt.find(1)
    @court2 = TennisCourt.find(2)
	end

	def show
		@court = TennisCourt.find(params[:id])
	end

	def update
		@court = TennisCourt.find(params[:id])
      if @court.update(court_params)
        flash[:notice] = "更新完了"
        redirect_to admins_tennis_courts_path
      else
        render :show
      end
	end

  private
  def court_params
    params.require(:tennis_court).permit(
      :cname,
      :ctype,
      :image
      )
  end

end
