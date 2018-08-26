class AddPhotoToGuide < ActiveRecord::Migration[5.2]
  def change
    add_column :guides, :photo, :string
  end
end
