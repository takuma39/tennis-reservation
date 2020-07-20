class TopImage < ApplicationRecord
	validates :top_image, presence: true
	attachment :top_image, destroy: false
end
