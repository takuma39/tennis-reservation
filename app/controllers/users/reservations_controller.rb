class Users::ReservationsController < ApplicationController
	layout 'users'
	before_action :authenticate_user!, only: [:confirm, :complete]
	def index
	end

	def show
		@day = params[:date]
		if @day.to_date < Time.now.ago(1.days)
			flash[:notice] = "予約できません"
			redirect_to users_reservations_path
		end
	end


	def confirm
		@reservation = Reservation.new
		@day = params[:date]
		@stime = params[:start_time]
		@court = params[:tennis_court_id]
		@bprice = 2000
		if @stime == "18:00" || @stime == "19:00" || @stime == "20:00" || @stime == "21:00"
			@nprice = 800
		else
			@nprice = 0
		end
		@tprice = @bprice + @nprice

		# 重複予約対策
		if Reservation.find_by(day: @day, start_time: @stime, tennis_court_id: @court)
			flash[:notice] = "予約が空いてません"
			redirect_to request.referer
		end
	end

	def complete
		@day = params[:date]
	end

	def create
		# 重複予約対策
		# if Reservation.find(day: params[:date])
		# 	flash[:notice] = "予約が空いてません"
		# 	redirect_to request.referer
		# end

		@reservation = Reservation.new(reservation_params)
		if @reservation.save
			flash[:notice] = "予約成功"
			redirect_to users_my_reservations_path(current_user.id)
		else
			flash[:notice] = "予約失敗"
			redirect_to request.referer
		end
	end

# デバッグ
	# def create
	# 	@reservation = Reservation.new(reservation_params)
	# 	logger.debug @reservation.errors.inspect
	# 	if @reservation.save
	# 		logger.debug @reservation.errors.inspect
	# 		flash[:notice] = "予約成功"
	# 		redirect_to users_root_path
	# 	else
	# 		flash[:notice] = "予約失敗"
	# 		redirect_to users_root_path
	# 	end
	# end


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
