class TennisCourt < ApplicationRecord

	has_many :reservations

	attachment :image, destroy: false
end
