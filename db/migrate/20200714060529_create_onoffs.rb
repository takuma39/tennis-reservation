class CreateOnoffs < ActiveRecord::Migration[5.2]
  def change
    create_table :onoffs do |t|

    	t.integer :tennis_court_id, null: false
    	t.date :oday, null: false
    	t.time :ostart_time, null: false
    	t.boolean :availability, default: false, null: false

    	t.timestamps
    end
  end
end
