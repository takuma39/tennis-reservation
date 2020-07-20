class CreateTopImages < ActiveRecord::Migration[5.2]
  def change
    create_table :top_images do |t|

    	t.string :top_image_id, null: false
    	t.boolean :top_status, default: false, null: false

    	t.timestamps
    end
  end
end
