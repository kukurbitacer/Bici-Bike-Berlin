class AddInfoToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :person_attending, :integer
    add_column :bookings, :bike, :boolean, default: false
  end
end
