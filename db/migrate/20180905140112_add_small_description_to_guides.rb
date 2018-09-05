class AddSmallDescriptionToGuides < ActiveRecord::Migration[5.2]
  def change
    add_column :guides, :small_description, :text
  end
end
