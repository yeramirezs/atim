class Teacher < ActiveRecord::Base

	validates_presence_of :name, :email

	def self.search(search)
	  if search
	    find(:all, :conditions => ['email = ?', "#{search}"]).first
	  end
	end
end
