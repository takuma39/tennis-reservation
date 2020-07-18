class Reservation < ApplicationRecord

	enum status:{
    入金待ち: 0,
    入金確認: 1,
    # 物理削除に変更
    # キャンセル: 2,
    # 強制キャンセル: 3,
  	}


	belongs_to :user
	belongs_to :tennis_court

end
