class Commitment  < ActiveRecord::Base

  validates_presence_of :due_date, :description

  belongs_to :thesis

  def meeting_date ( meeting_id)
    theMeeting = Meeting.find( meeting_id)
    return theMeeting.fecha.strftime("%Y/%m/%d")
  end

  def due_date_day ( due_date )
    return due_date.strftime("%Y/%m/%d")
  end

  def status_text ( status)
    return status ? "Closed" : "Open"
  end
end