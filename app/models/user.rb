class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # 住所機能
  include JpPrefecture
  jp_prefecture :prefecture_code


  enum gender:{
    man: 0,
    woman: 1,
    }

  enum rank:{
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
  validates :postcode, presence: true, length: { is: 7 }, numericality: { only_integer: true }
  validates :prefecture_code, presence: true
  validates :address_city, presence: true
  validates :address_street, presence: true
  validates :telephone_number, presence: true, numericality: { only_integer: true }


  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end

end
