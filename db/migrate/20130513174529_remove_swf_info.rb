class RemoveSwfInfo < ActiveRecord::Migration
  def up
    remove_column :games, :swf_file_name
    remove_column :games, :swf_file_type
    remove_column :games, :swf_file_size
    remove_column :games, :swf_updated_at
  end

  def down
  end
end
