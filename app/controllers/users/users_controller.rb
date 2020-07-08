class Users::UsersController < ApplicationController
	layout 'users'
	before_action :authenticate_user!
	def show
	end

	def edit
	end

	def update
	end

end
