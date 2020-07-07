class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|

	  t.integer :user_id, null: false
	  t.integer :tennis_court_id, null: false
	  t.date :day, null: false
	  t.time :start_time, null: false
	  t.integer :total_price, null: false
	  t.integer :number, default: 0, null:false
	  t.integer :status, default: 0, null:false

      t.timestamps
    end
  end
end
