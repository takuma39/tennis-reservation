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

end
