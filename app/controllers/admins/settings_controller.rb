class Admins::SettingsController < ApplicationController
	layout 'admins'
	before_action :authenticate_admin!

	def index
	end
end
