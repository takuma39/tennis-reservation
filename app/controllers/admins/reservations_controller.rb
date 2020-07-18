class Admins::ReservationsController < ApplicationController
	layout 'admins'
	before_action :authenticate_admin!

	def index



	end

	def show
		@day = params[:date]
		@onoff = Onoff.new
		@check =Onoff.find_by(oday: @day, ostart_time: "9:00", tennis_court_id:1)

		@reservation1 = Reservation.find_by(day: @day, start_time: "9:00", tennis_court_id:1)
		@reservation2 = Reservation.find_by(day: @day, start_time: "10:00", tennis_court_id:1)
		@reservation3 = Reservation.find_by(day: @day, start_time: "11:00", tennis_court_id:1)
		@reservation4 = Reservation.find_by(day: @day, start_time: "12:00", tennis_court_id:1)
		@reservation5 = Reservation.find_by(day: @day, start_time: "13:00", tennis_court_id:1)
		@reservation6 = Reservation.find_by(day: @day, start_time: "14:00", tennis_court_id:1)
		@reservation7 = Reservation.find_by(day: @day, start_time: "15:00", tennis_court_id:1)
		@reservation8 = Reservation.find_by(day: @day, start_time: "16:00", tennis_court_id:1)
		@reservation9 = Reservation.find_by(day: @day, start_time: "17:00", tennis_court_id:1)
		@reservation10 = Reservation.find_by(day: @day, start_time: "18:00", tennis_court_id:1)
		@reservation11 = Reservation.find_by(day: @day, start_time: "19:00", tennis_court_id:1)
		@reservation12 = Reservation.find_by(day: @day, start_time: "20:00", tennis_court_id:1)
		@reservation13 = Reservation.find_by(day: @day, start_time: "21:00", tennis_court_id:1)

		@reservation14 = Reservation.find_by(day: @day, start_time: "9:00", tennis_court_id:2)
		@reservation15 = Reservation.find_by(day: @day, start_time: "10:00", tennis_court_id:2)
		@reservation16 = Reservation.find_by(day: @day, start_time: "11:00", tennis_court_id:2)
		@reservation17 = Reservation.find_by(day: @day, start_time: "12:00", tennis_court_id:2)
		@reservation18 = Reservation.find_by(day: @day, start_time: "13:00", tennis_court_id:2)
		@reservation19 = Reservation.find_by(day: @day, start_time: "14:00", tennis_court_id:2)
		@reservation20 = Reservation.find_by(day: @day, start_time: "15:00", tennis_court_id:2)
		@reservation21 = Reservation.find_by(day: @day, start_time: "16:00", tennis_court_id:2)
		@reservation22 = Reservation.find_by(day: @day, start_time: "17:00", tennis_court_id:2)
		@reservation23 = Reservation.find_by(day: @day, start_time: "18:00", tennis_court_id:2)
		@reservation24 = Reservation.find_by(day: @day, start_time: "19:00", tennis_court_id:2)
		@reservation25 = Reservation.find_by(day: @day, start_time: "20:00", tennis_court_id:2)
		@reservation26 = Reservation.find_by(day: @day, start_time: "21:00", tennis_court_id:2)
	end

	def edit
		@day = params[:date]

		@onoff1 = Onoff.find_by(oday: @day, ostart_time: "9:00", tennis_court_id:1)
		@onoff2 = Onoff.find_by(oday: @day, ostart_time: "10:00", tennis_court_id:1)
		@onoff3 = Onoff.find_by(oday: @day, ostart_time: "11:00", tennis_court_id:1)
		@onoff4 = Onoff.find_by(oday: @day, ostart_time: "12:00", tennis_court_id:1)
		@onoff5 = Onoff.find_by(oday: @day, ostart_time: "13:00", tennis_court_id:1)
		@onoff6 = Onoff.find_by(oday: @day, ostart_time: "14:00", tennis_court_id:1)
		@onoff7 = Onoff.find_by(oday: @day, ostart_time: "15:00", tennis_court_id:1)
		@onoff8 = Onoff.find_by(oday: @day, ostart_time: "16:00", tennis_court_id:1)
		@onoff9 = Onoff.find_by(oday: @day, ostart_time: "17:00", tennis_court_id:1)
		@onoff10 = Onoff.find_by(oday: @day, ostart_time: "18:00", tennis_court_id:1)
		@onoff11 = Onoff.find_by(oday: @day, ostart_time: "19:00", tennis_court_id:1)
		@onoff12 = Onoff.find_by(oday: @day, ostart_time: "20:00", tennis_court_id:1)
		@onoff13 = Onoff.find_by(oday: @day, ostart_time: "21:00", tennis_court_id:1)

		@onoff14 = Onoff.find_by(oday: @day, ostart_time: "9:00", tennis_court_id:2)
		@onoff15 = Onoff.find_by(oday: @day, ostart_time: "10:00", tennis_court_id:2)
		@onoff16 = Onoff.find_by(oday: @day, ostart_time: "11:00", tennis_court_id:2)
		@onoff17 = Onoff.find_by(oday: @day, ostart_time: "12:00", tennis_court_id:2)
		@onoff18 = Onoff.find_by(oday: @day, ostart_time: "13:00", tennis_court_id:2)
		@onoff19 = Onoff.find_by(oday: @day, ostart_time: "14:00", tennis_court_id:2)
		@onoff20 = Onoff.find_by(oday: @day, ostart_time: "15:00", tennis_court_id:2)
		@onoff21 = Onoff.find_by(oday: @day, ostart_time: "16:00", tennis_court_id:2)
		@onoff22 = Onoff.find_by(oday: @day, ostart_time: "17:00", tennis_court_id:2)
		@onoff23 = Onoff.find_by(oday: @day, ostart_time: "18:00", tennis_court_id:2)
		@onoff24 = Onoff.find_by(oday: @day, ostart_time: "19:00", tennis_court_id:2)
		@onoff25 = Onoff.find_by(oday: @day, ostart_time: "20:00", tennis_court_id:2)
		@onoff26 = Onoff.find_by(oday: @day, ostart_time: "21:00", tennis_court_id:2)

		@reservation1 = Reservation.find_by(day: @day, start_time: "9:00", tennis_court_id:1)
		@reservation2 = Reservation.find_by(day: @day, start_time: "10:00", tennis_court_id:1)
		@reservation3 = Reservation.find_by(day: @day, start_time: "11:00", tennis_court_id:1)
		@reservation4 = Reservation.find_by(day: @day, start_time: "12:00", tennis_court_id:1)
		@reservation5 = Reservation.find_by(day: @day, start_time: "13:00", tennis_court_id:1)
		@reservation6 = Reservation.find_by(day: @day, start_time: "14:00", tennis_court_id:1)
		@reservation7 = Reservation.find_by(day: @day, start_time: "15:00", tennis_court_id:1)
		@reservation8 = Reservation.find_by(day: @day, start_time: "16:00", tennis_court_id:1)
		@reservation9 = Reservation.find_by(day: @day, start_time: "17:00", tennis_court_id:1)
		@reservation10 = Reservation.find_by(day: @day, start_time: "18:00", tennis_court_id:1)
		@reservation11 = Reservation.find_by(day: @day, start_time: "19:00", tennis_court_id:1)
		@reservation12 = Reservation.find_by(day: @day, start_time: "20:00", tennis_court_id:1)
		@reservation13 = Reservation.find_by(day: @day, start_time: "21:00", tennis_court_id:1)

		@reservation14 = Reservation.find_by(day: @day, start_time: "9:00", tennis_court_id:2)
		@reservation15 = Reservation.find_by(day: @day, start_time: "10:00", tennis_court_id:2)
		@reservation16 = Reservation.find_by(day: @day, start_time: "11:00", tennis_court_id:2)
		@reservation17 = Reservation.find_by(day: @day, start_time: "12:00", tennis_court_id:2)
		@reservation18 = Reservation.find_by(day: @day, start_time: "13:00", tennis_court_id:2)
		@reservation19 = Reservation.find_by(day: @day, start_time: "14:00", tennis_court_id:2)
		@reservation20 = Reservation.find_by(day: @day, start_time: "15:00", tennis_court_id:2)
		@reservation21 = Reservation.find_by(day: @day, start_time: "16:00", tennis_court_id:2)
		@reservation22 = Reservation.find_by(day: @day, start_time: "17:00", tennis_court_id:2)
		@reservation23 = Reservation.find_by(day: @day, start_time: "18:00", tennis_court_id:2)
		@reservation24 = Reservation.find_by(day: @day, start_time: "19:00", tennis_court_id:2)
		@reservation25 = Reservation.find_by(day: @day, start_time: "20:00", tennis_court_id:2)
		@reservation26 = Reservation.find_by(day: @day, start_time: "21:00", tennis_court_id:2)

		unless @onoff1
			flash[:notice] = "一括開放してください"
			redirect_to admins_root_path
		end

	end

	def update
		@onoff = Onoff.find(params[:id])
		if @onoff.availability == true
			@onoff.availability = false
		else
			@onoff.availability = true
		end

	    if @onoff.save
	    	flash[:notice] = "更新成功"
			redirect_to request.referer
	    else
	    	flash[:notice] = "更新失敗"
	     	redirect_to request.referer
	    end
	end

	def create

		@onoff1 = Onoff.new(onoff_params)
		@onoff1.tennis_court_id = 1
		@onoff1.ostart_time = "9:00"
		@onoff1.availability = true
		@onoff1.save

		@onoff2 = Onoff.new(onoff_params)
		@onoff2.tennis_court_id = 1
		@onoff2.ostart_time = "10:00"
		@onoff2.availability = true
		@onoff2.save

		@onoff3 = Onoff.new(onoff_params)
		@onoff3.tennis_court_id = 1
		@onoff3.ostart_time = "11:00"
		@onoff3.availability = true
		@onoff3.save

		@onoff4 = Onoff.new(onoff_params)
		@onoff4.tennis_court_id = 1
		@onoff4.ostart_time = "12:00"
		@onoff4.availability = true
		@onoff4.save

		@onoff5 = Onoff.new(onoff_params)
		@onoff5.tennis_court_id = 1
		@onoff5.ostart_time = "13:00"
		@onoff5.availability = true
		@onoff5.save

		@onoff6 = Onoff.new(onoff_params)
		@onoff6.tennis_court_id = 1
		@onoff6.ostart_time = "14:00"
		@onoff6.availability = true
		@onoff6.save

		@onoff7 = Onoff.new(onoff_params)
		@onoff7.tennis_court_id = 1
		@onoff7.ostart_time = "15:00"
		@onoff7.availability = true
		@onoff7.save

		@onoff8 = Onoff.new(onoff_params)
		@onoff8.tennis_court_id = 1
		@onoff8.ostart_time = "16:00"
		@onoff8.availability = true
		@onoff8.save

		@onoff9 = Onoff.new(onoff_params)
		@onoff9.tennis_court_id = 1
		@onoff9.ostart_time = "17:00"
		@onoff9.availability = true
		@onoff9.save

		@onoff10 = Onoff.new(onoff_params)
		@onoff10.tennis_court_id = 1
		@onoff10.ostart_time = "18:00"
		@onoff10.availability = true
		@onoff10.save

		@onoff11 = Onoff.new(onoff_params)
		@onoff11.tennis_court_id = 1
		@onoff11.ostart_time = "19:00"
		@onoff11.availability = true
		@onoff11.save

		@onoff12 = Onoff.new(onoff_params)
		@onoff12.tennis_court_id = 1
		@onoff12.ostart_time = "20:00"
		@onoff12.availability = true
		@onoff12.save

		@onoff13 = Onoff.new(onoff_params)
		@onoff13.tennis_court_id = 1
		@onoff13.ostart_time = "21:00"
		@onoff13.availability = true
		@onoff13.save

		@onoff14 = Onoff.new(onoff_params)
		@onoff14.tennis_court_id = 2
		@onoff14.ostart_time = "9:00"
		@onoff14.availability = true
		@onoff14.save

		@onoff15 = Onoff.new(onoff_params)
		@onoff15.tennis_court_id = 2
		@onoff15.ostart_time = "10:00"
		@onoff15.availability = true
		@onoff15.save

		@onoff16 = Onoff.new(onoff_params)
		@onoff16.tennis_court_id = 2
		@onoff16.ostart_time = "11:00"
		@onoff16.availability = true
		@onoff16.save

		@onoff17 = Onoff.new(onoff_params)
		@onoff17.tennis_court_id = 2
		@onoff17.ostart_time = "12:00"
		@onoff17.availability = true
		@onoff17.save

		@onoff18 = Onoff.new(onoff_params)
		@onoff18.tennis_court_id = 2
		@onoff18.ostart_time = "13:00"
		@onoff18.availability = true
		@onoff18.save

		@onoff19 = Onoff.new(onoff_params)
		@onoff19.tennis_court_id = 2
		@onoff19.ostart_time = "14:00"
		@onoff19.availability = true
		@onoff19.save

		@onoff20 = Onoff.new(onoff_params)
		@onoff20.tennis_court_id = 2
		@onoff20.ostart_time = "15:00"
		@onoff20.availability = true
		@onoff20.save

		@onoff21 = Onoff.new(onoff_params)
		@onoff21.tennis_court_id = 2
		@onoff21.ostart_time = "16:00"
		@onoff21.availability = true
		@onoff21.save

		@onoff22 = Onoff.new(onoff_params)
		@onoff22.tennis_court_id = 2
		@onoff22.ostart_time = "17:00"
		@onoff22.availability = true
		@onoff22.save

		@onoff23 = Onoff.new(onoff_params)
		@onoff23.tennis_court_id = 2
		@onoff23.ostart_time = "18:00"
		@onoff23.availability = true
		@onoff23.save

		@onoff24 = Onoff.new(onoff_params)
		@onoff24.tennis_court_id = 2
		@onoff24.ostart_time = "19:00"
		@onoff24.availability = true
		@onoff24.save

		@onoff25 = Onoff.new(onoff_params)
		@onoff25.tennis_court_id = 2
		@onoff25.ostart_time = "20:00"
		@onoff25.availability = true
		@onoff25.save

		@onoff26 = Onoff.new(onoff_params)
		@onoff26.tennis_court_id = 2
		@onoff26.ostart_time = "21:00"
		@onoff26.availability = true
		if @onoff26.save
			flash[:notice] = "予約開放成功"
			redirect_to request.referer
		else
			flash[:notice] = "予約開放失敗"
			redirect_to request.referer
		end

	end

	private

	def onoff_params
		params.require(:onoff).permit(
			:onoff_id,
			:tennis_court_id,
			:oday,
			:ostart_time,
			:availability
			)
	end

end
