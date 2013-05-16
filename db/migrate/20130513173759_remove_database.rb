class RemoveDatabase < ActiveRecord::Migration
  def up
    remove_column :games, :name
    remove_column :games, :description
    remove_column :games, :category
    remove_column :games, :age_group
    remove_column :games, :dimension_x
    remove_column :games, :dimension_y
    remove_column :games, :image
    remove_column :games, :feature_image
    remove_column :games, :developer
    remove_column :games, :date_added
    remove_column :games, :instructions
    remove_column :games, :date_to_go_live
    remove_column :games, :date_to_show_countdown
    remove_column :games, :plays
  end

  def down
  end
end
