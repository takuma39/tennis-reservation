class Users::HomesController < ApplicationController
	layout 'users'

	def top
		@topimages = TopImage.where(top_status: true)
		@informations = Information.order(created_at: :desc).limit(3)
	end

end
