class Lesson < ActiveRecord::Base
attr_accessible  :name, :display_name, :description, :grade_level, :lesson_type, :subject, :views, :content, :content_file_name, :content2, :content2_file_name, :content3, :content3_file_name, :content4, :content4_file_name, :content5, :content5_file_name 
has_attached_file :content,
  :url => "/system/:class/:attachment/:id/:style/:basename.:extension",
  :path => ":rails_root/public/system/:class/:attachment/:id/:style/:basename.:extension"

has_attached_file :content2,
  :url => "/system/:class/:attachment/:id/:style/:basename.:extension",
  :path => ":rails_root/public/system/:class/:attachment/:id/:style/:basename.:extension"

has_attached_file :content3,
  :url => "/system/:class/:attachment/:id/:style/:basename.:extension",
  :path => ":rails_root/public/system/:class/:attachment/:id/:style/:basename.:extension"

has_attached_file :content4,
  :url => "/system/:class/:attachment/:id/:style/:basename.:extension",
  :path => ":rails_root/public/system/:class/:attachment/:id/:style/:basename.:extension"

has_attached_file :content5,
  :url => "/system/:class/:attachment/:id/:style/:basename.:extension",
  :path => ":rails_root/public/system/:class/:attachment/:id/:style/:basename.:extension"

def swfupload_file=(data)
    data.content_type =
MIME::Types.type_for(data.original_filename).first.content_type
    logger.warn("Data content type is: #{data.content_type}")
    self.file = data
  end
end
