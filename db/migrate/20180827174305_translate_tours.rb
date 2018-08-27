class TranslateTours < ActiveRecord::Migration[5.2]
  reversible do |dir|
    dir.up do
      Tour.create_translation_table! :name => :string, :description => :text, :location => :string
    end

    dir.down do
      Tour.drop_translation_table!
    end
  end
end
