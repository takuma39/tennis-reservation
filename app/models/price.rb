class Price < ApplicationRecord
  validates :basic_price, presence: true
  validates :night_price, presence: true
end
