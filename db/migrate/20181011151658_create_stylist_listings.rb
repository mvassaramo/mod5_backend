class CreateStylistListings < ActiveRecord::Migration[5.2]
  def change
    create_table :stylist_listings do |t|
      t.integer :user_id
      t.string :rating
      t.string :area

      t.timestamps
    end
  end
end
