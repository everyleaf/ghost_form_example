class CreateMeetings < ActiveRecord::Migration[7.1]
  def change
    create_table :meetings do |t|
      t.string :title
      t.string :category
      t.string :meeting_room
      t.string :meeting_url
      t.timestamps
    end
  end
end
