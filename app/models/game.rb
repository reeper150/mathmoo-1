class Game < ActiveRecord::Base

attr_accessible  :swf, :swf_file_name, :name, :description, :category, :age_group, :dimension_x, :dimension_y, :image, :image_file_name, :feature_image, :feature_image_file_name, :developer, :instructions, :date_to_go_live, :date_to_show_countdown, :plays
has_attached_file :swf,
  :url => "/system/:class/:attachment/:id/:style/:basename.:extension",
  :path => ":rails_root/public/system/:class/:attachment/:id/:style/:basename.:extension"

has_attached_file :image,
  :url => "/system/:class/:attachment/:id/:style/:basename.:extension",
  :path => ":rails_root/public/system/:class/:attachment/:id/:style/:basename.:extension"

has_attached_file :feature_image,
  :url => "/system/:class/:attachment/:id/:style/:basename.:extension",
  :path => ":rails_root/public/system/:class/:attachment/:id/:style/:basename.:extension"

  def swfupload_file=(data)
    data.content_type =
MIME::Types.type_for(data.original_filename).first.content_type
    logger.warn("Data content type is: #{data.content_type}")
    self.file = data
  end


end
