class CreateAvailabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :availabilities do |t|
      t.integer :stylist_listing_id
      t.string :time
      t.date :date
      t.boolean :booked

      t.timestamps
    end
  end
end
