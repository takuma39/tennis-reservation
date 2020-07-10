class CreateTennisCourts < ActiveRecord::Migration[5.2]
  def change
    create_table :tennis_courts do |t|

      t.string :cname
      t.string :ctype
      t.string :image_id

      t.timestamps
    end
  end
end
