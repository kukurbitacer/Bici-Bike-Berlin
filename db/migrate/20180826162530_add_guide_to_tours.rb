class AddGuideToTours < ActiveRecord::Migration[5.2]
  def change
    add_reference :tours, :guide, foreign_key: true
  end
end
