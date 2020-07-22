class Admins::StatisticsController < ApplicationController
	layout 'admins'
	before_action :authenticate_admin!

	def index
		# 予約が無い場合の対策
		unless Reservation.exists?(status: "入金確認")
			flash[:notice] = "統計がありません"
			redirect_to admins_root_path
		end

		# ユーザー全て
		@users = User.all

		# 入金確認が取れている予約全て
		@r_reservations = Reservation.where(status: "入金確認")

		# 予約全て
		@reservations = Reservation.all

		# 予約開放数
		@onoffs = Onoff.where(availability: true)

		# 平均予約回数
		@r_avarage = @r_reservations.count / @users.count

		# 総入金額平均
		@p_avarage = @r_reservations.sum(:total_price) / @users.count

# 時間帯毎の予約数
		@time1 = Reservation.where(status: "入金確認", start_time: "9:00")
		@time2 = Reservation.where(status: "入金確認", start_time: "10:00")
		@time3 = Reservation.where(status: "入金確認", start_time: "11:00")
		@time4 = Reservation.where(status: "入金確認", start_time: "12:00")
		@time5 = Reservation.where(status: "入金確認", start_time: "13:00")
		@time6 = Reservation.where(status: "入金確認", start_time: "14:00")
		@time7 = Reservation.where(status: "入金確認", start_time: "15:00")
		@time8 = Reservation.where(status: "入金確認", start_time: "16:00")
		@time9 = Reservation.where(status: "入金確認", start_time: "17:00")
		@time10 = Reservation.where(status: "入金確認", start_time: "18:00")
		@time11 = Reservation.where(status: "入金確認", start_time: "19:00")
		@time12 = Reservation.where(status: "入金確認", start_time: "20:00")
		@time13 = Reservation.where(status: "入金確認", start_time: "21:00")

# 時間帯毎の％
		# @a_time1 =  @time1.count / @r_reservations.coun * 100
		# @a_time2 =  @time2.count / @r_reservations.count * 100
		# @a_time3 =  @time3.count / @r_reservations.count * 100
		# @a_time4 =  @time4.count / @r_reservations.count * 100
		# @a_time5 =  @time5.count / @r_reservations.count * 100
		# @a_time6 =  @time6.count / @r_reservations.count * 100
		# @a_time7 =  @time7.count / @r_reservations.count * 100
		# @a_time8 =  @time8.count / @r_reservations.count * 100
		# @a_time9 =  @time9.count / @r_reservations.count * 100
		# @a_time10 =  @time10.count / @r_reservations.count * 100
		# @a_time11 =  @time11.count / @r_reservations.count * 100
		# @a_time12 =  @time12.count / @r_reservations.count * 100
		# @a_time13 =  @time13.count / @r_reservations.count * 100

	end
end
