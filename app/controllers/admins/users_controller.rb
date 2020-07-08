class Admins::UsersController < ApplicationController
	layout 'admins'
	before_action :authenticate_admin!

	def index
	end

	def show
	end

	def edit
	end

	def search
	end

	def update
	end

end
