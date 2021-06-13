class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.text :title, null:false
      t.date :start, null:false
      t.date :end, null:false
      t.boolean :day
      t.text :content
      
      t.timestamps
    end
  end
end
