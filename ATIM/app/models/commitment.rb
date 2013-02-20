class Commitment  < ActiveRecord::Base

  validates_presence_of :due_date, :description
end