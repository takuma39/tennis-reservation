class Reservation < ApplicationRecord

	enum status:{
    入金待ち: 0,
    入金確認: 1,
    キャンセル: 2,
    強制キャンセル: 3,
  	}

end
