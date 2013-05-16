class AddSwfFileName < ActiveRecord::Migration
  def up
    add_column :games, :swf_file_name, :string
  end

  def down
  end
end
