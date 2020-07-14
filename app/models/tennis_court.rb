class TennisCourt < ApplicationRecord

	has_many :reservations
	has_many :onoffs

	attachment :image, destroy: false
end
