class TranslateGuides < ActiveRecord::Migration[5.2]
  reversible do |dir|
    dir.up do
      Guide.create_translation_table! :description => :text, :small_description => :text
    end

    dir.down do
      Guide.drop_translation_table!
    end
  end
end
