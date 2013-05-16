class AddInfoToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :name, :string
    add_column :lessons, :display_name, :string
    add_column :lessons, :description, :text
    add_column :lessons, :grade_level, :string
    add_column :lessons, :lesson_type, :string
    add_column :lessons, :subject, :string
    add_column :lessons, :views, :integer
    add_column :lessons, :content, :string
    add_column :lessons, :content_file_name, :string
    add_column :lessons, :content2, :string
    add_column :lessons, :content2_file_name, :string
    add_column :lessons, :content3, :string
    add_column :lessons, :content3_file_name, :string
    add_column :lessons, :content4, :string
    add_column :lessons, :content4_file_name, :string
    add_column :lessons, :content5, :string
    add_column :lessons, :content5_file_name, :string
  end
end
