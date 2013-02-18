class Thesis < ActiveRecord::Base
	validates_presence_of :title, :description, :teacher_id
	attr_accessible :title, :description, :teacher_id

	belongs_to :teacher

	validates :title, :length => { :maximum => 140 }


end
