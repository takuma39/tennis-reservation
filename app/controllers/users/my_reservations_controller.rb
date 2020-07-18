class Users::MyReservationsController < ApplicationController
	layout 'users'
	before_action :authenticate_user!

	def index
		@user = User.find(params[:id])
		@reservations = Reservation.where(user_id: @user.id, status: "入金待ち")
	end

	def show
		@user = current_user
		@reservation = Reservation.find(params[:id])
		@bprice = 2000
		if @reservation.start_time == "18:00" || @reservation.start_time == "19:00" || @reservation.start_time == "20:00" || @reservation.start_time == "21:00"
			@nprice = 800
		else
			@nprice = 0
		end
	end


	def destroy
		@reservation = Reservation.find(params[:id])
		if @reservation.destroy
		   flash[:notice] = "キャンセル完了"
		   redirect_to users_my_reservations_path(current_user.id)
		else
			flash[:notice] = "キャンセル失敗"
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
