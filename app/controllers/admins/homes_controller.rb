class Admins::HomesController < ApplicationController
	layout 'admins'
	before_action :authenticate_admin!

	def top
	end

end
