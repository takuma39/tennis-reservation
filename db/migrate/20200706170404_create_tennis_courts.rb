class CreateTennisCourts < ActiveRecord::Migration[5.2]
  def change
    create_table :tennis_courts do |t|

      t.string :cname
      t.string :ctype

      t.timestamps
    end
  end
end
