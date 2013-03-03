class Thesis < ActiveRecord::Base
	validates_presence_of :title, :description, :teacher_id

	validates_length_of :title, :minimum => 3
	validates_length_of :description, :minimum => 3
	validates :title, :length => { :maximum => 140 }

	attr_accessible :title, :description, :teacher_id

	belongs_to :teacher

	has_many :students

	has_many :commitments

  has_many :recommendations




end
