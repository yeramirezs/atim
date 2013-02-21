class Thesis < ActiveRecord::Base
	validates_presence_of :title, :description, :teacher_id
	attr_accessible :title, :description, :teacher_id
	belongs_to :teacher
	validates_length_of :title, :minimum => 3
	validates_length_of :description, :minimum => 3
	validates :title, :length => { :maximum => 140 }


end
