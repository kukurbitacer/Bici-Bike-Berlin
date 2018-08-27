class AddPlacementToTours < ActiveRecord::Migration[5.2]
  def change
    add_column :tours, :active, :boolean, default: true
    add_column :tours, :first_page, :boolean, default: false
  end
end
