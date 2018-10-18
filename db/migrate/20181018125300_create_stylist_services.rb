class CreateStylistServices < ActiveRecord::Migration[5.2]
  def change
    create_table :stylist_services do |t|
      t.integer :stylist_listing_id
      t.integer :service_id

      t.timestamps
    end
  end
end
