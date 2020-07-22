class Admins::StatisticsController < ApplicationController
	layout 'admins'
	before_action :authenticate_admin!

	def index
		@users = User.all
		@reservations = Reservation.where(status: "入金確認")
		@r_avarage = @reservations.count / @users.count

	end
end
