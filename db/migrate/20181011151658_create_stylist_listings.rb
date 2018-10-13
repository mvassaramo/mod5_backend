class CreateStylistListings < ActiveRecord::Migration[5.2]
  def change
    create_table :stylist_listings do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :bio
      t.string :rating
      t.string :area

      t.timestamps
    end
  end
end
