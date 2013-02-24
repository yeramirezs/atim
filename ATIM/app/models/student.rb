class Student < ActiveRecord::Base

	belongs_to :thesis
	validates_presence_of :name, :email, :thesis_id
	validates_uniqueness_of :email
end
