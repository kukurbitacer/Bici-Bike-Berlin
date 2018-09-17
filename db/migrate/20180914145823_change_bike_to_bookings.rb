class ChangeBikeToBookings < ActiveRecord::Migration[5.2]
  def change
    change_table :bookings do |t|
     t.change_default :bike_number, 0
end
  end
end
