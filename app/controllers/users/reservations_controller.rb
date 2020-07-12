class Users::ReservationsController < ApplicationController
	layout 'users'
	before_action :authenticate_user!, only: [:confirm, :complete]
	def index
	end

	def show
		@day = params[:date]
	end


	def confirm
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
	end

	def complete
		@day = params[:date]
	end

	def create
	end

end
