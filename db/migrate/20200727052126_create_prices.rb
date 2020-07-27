class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|

    t.integer :basic_price, default: 2000, null: false
    t.integer :night_price, default: 800, null: false

    t.timestamps
    end
  end
end
