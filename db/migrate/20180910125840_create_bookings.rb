class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :first_name
      t.string :last_name
      t.date :booking_date
      t.text :comment
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
