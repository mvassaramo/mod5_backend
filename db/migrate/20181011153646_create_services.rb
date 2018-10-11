class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.integer :stylist_listing_id
      t.string :name

      t.timestamps
    end
  end
end
