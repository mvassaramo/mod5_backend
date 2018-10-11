class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :availability_id
      t.integer :customer_booking_id

      t.timestamps
    end
  end
end
