class AddImageFileNameAndImageFeatureFileName < ActiveRecord::Migration
  def up
    add_column :games, :image_file_name, :string
    add_column :games, :feature_image_file_name, :text
  end

  def down
  end
end
