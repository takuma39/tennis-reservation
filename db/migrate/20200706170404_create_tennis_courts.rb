class CreateTennisCourts < ActiveRecord::Migration[5.2]
  def change
    create_table :tennis_courts do |t|

      t.string :court_name, null: false
      t.string :type, null: false

      t.timestamps
    end
  end
end
