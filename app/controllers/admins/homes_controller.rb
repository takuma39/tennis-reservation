class Admins::HomesController < ApplicationController
	layout 'admins'
	before_action :authenticate_admin!

	def top
		@day = Date.current

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

	def index
	end

end
