class AddSwfToGames < ActiveRecord::Migration
  def change
    add_column :games, :swf_file_name, :string
    add_column :games, :swf_file_type, :string
    add_column :games, :swf_file_size, :integer
    add_column :games, :swf_updated_at, :datetime
  end
end
