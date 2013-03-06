class CreateSources < ActiveRecord::Migration
  def up
    create_table :sources do |s|
      s.string   "title",       :null => false
      s.text     "citation",    :null => false
      s.string   "url",         :null => true
    end
  end

  def down
    drop_table  :sources
  end
end
