class Users::HomesController < ApplicationController
	layout 'users'

	def top
		@topimages = TopImage.where(top_status: true)
	end

end
