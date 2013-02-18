class Teacher < ActiveRecord::Base

	validates_presence_of :name, :email
	has_many :theses

	def self.search(search)
	  if search
	    find(:all, :conditions => ['email = ?', "#{search}"]).first
	  end
	end
end
