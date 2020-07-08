class Users::UsersController < ApplicationController
	layout 'users'
	before_action :authenticate_user!
	def show
	end

	def edit
	end

	def update
	end

 	private
	def user_params
	  params.require(:user).permit(
	  	:name,
	  	:name_kana,
	  	:gender,
	  	:birthdat,
	  	:postcode,
	  	:prefecture_name,
	  	:address_city,
	  	:address_street,
	  	:address_building,
	  	:telephone_number,
	  	:rank,
	  	:penalty,
	  	:active,
	  	:remark
	  	)
	end

end
