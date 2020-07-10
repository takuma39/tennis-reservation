class TennisCourt < ApplicationRecord

	has_many :resrvations

	attachment :image, destroy: false
end
