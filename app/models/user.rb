class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
 　　devise :database_authenticatable, :registerable,
       　　 :recoverable, :rememberable, :validatable


	enum gender:{
    男: 0,
    女: 1,
  	}

	enum gender:{
    NORMAL: 0,
    SILVER: 1,
    GOLD: 2,
    VIP: 3,
  	}


  has_many :resrvations


  validates :name, presence: true
  validates :name_kana, presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/ }
  validates :gender, presence: true
  validates :birthday, presence: true
  validates :postal_code, presence: true, length: { is: 7 }, numericality: { only_integer: true }
  validates :address, presence: true
  validates :telephone_number, presence: true, numericality: { only_integer: true }

end
