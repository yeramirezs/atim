class CreateMeeting < ActiveRecord::Migration
  def up
    create_table :meetings do |m|
      m.string     :title,    :null => false
      m.timestamp  :fecha,    :null => false
    end
  end

  def down
    drop_table  :meetings
  end
end
