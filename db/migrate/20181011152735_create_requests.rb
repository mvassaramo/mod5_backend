class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.string :date
      t.string :time
      t.string :other_info

      t.timestamps
    end
  end
end
