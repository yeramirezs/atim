class Deliverable < ActiveRecord::Base

  validates_presence_of :thesis_id, :title

  attr_accessible :description, :file_name, :thesis_id, :title

  has_attached_file :file_name, :url => "/files/deliverables/:basename.:extension",
                    :path => ":rails_root/public/files/deliverables/:basename.:extension",
                    :default_url => "/images/default/missing_:style.png"

  attr_accessor :file_name_file_name
  attr_accessor :file_name_content_type
  attr_accessor :file_name_file_size
  attr_accessor :file_name_updated_at

  validates_attachment_size :file_name, :less_than => 32.megabytes

  belongs_to :thesis

end
