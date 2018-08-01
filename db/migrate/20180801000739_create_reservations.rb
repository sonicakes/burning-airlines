class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :flight_id
      t.integer :user_id
      t.boolean :reserved
      t.string :seat

      t.timestamps
    end
  end
end
