class AddDetails2 < ActiveRecord::Migration
  def up
    add_column :games, :name, :string
    add_column :games, :description, :text
    add_column :games, :category, :string
    add_column :games, :age_group, :string
    add_column :games, :dimension_x, :integer
    add_column :games, :dimension_y, :integer
    add_column :games, :image, :string
    add_column :games, :feature_image, :string
    add_column :games, :developer, :string
    add_column :games, :instructions, :text
    add_column :games, :date_to_go_live, :date
    add_column :games, :date_to_show_countdown, :date
    add_column :games, :plays, :integer
  end

  def down
  end
end
