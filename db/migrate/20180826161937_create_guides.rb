class CreateGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :guides do |t|
      t.string :name
      t.text :description
      t.string :email
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
