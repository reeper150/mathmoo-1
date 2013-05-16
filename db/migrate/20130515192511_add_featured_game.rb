class AddFeaturedGame < ActiveRecord::Migration
  def up
    add_column :frontpages, :featured_game, :integer
  end

  def down
  end
end
