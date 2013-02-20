class Meeting   < ActiveRecord::Base

  validates_presence_of :title, :fecha
  # To change this template use File | Settings | File Templates.
end