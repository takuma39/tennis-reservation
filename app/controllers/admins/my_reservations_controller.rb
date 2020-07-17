class Admins::MyReservationsController < ApplicationController
	layout 'admins'
	before_action :authenticate_admin!

	def index
		@user = User.find(params[:id])
		@reservations = Reservation.where(user_id: @user.id)
	end

	def show
		@reservation = Reservation.find(params[:id])
		@user = User.find(@reservation.user_id)
		@bprice = 2000
		if @reservation.start_time == "18:00" || @reservation.start_time == "19:00" || @reservation.start_time == "20:00" || @reservation.start_time == "21:00"
			@nprice = 800
		else
			@nprice = 0
		end
	end

	def update
		@reservation = Reservation.find(params[:id])
		if params[:status]
		@reservation.status = params[:status]
		end
		if params[:number]
		@reservation.number = params[:number]
		end
		if @reservation.save
		   flash[:notice] = "更新"
		   redirect_to request.referer
		else
			flash[:notice] = "更新失敗"
			redirect_to request.referer
		end
	end


	private

	def reservation_params
		params.require(:reservation).permit(
			:user_id,
			:tennis_court_id,
			:day,
			:start_time,
			:total_price,
			:number,
			:status,
			)
	end

end
