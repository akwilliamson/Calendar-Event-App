class CreateEventsClass < ActiveRecord::Migration
  def change
    create_table :events_classes do |t|
      t.column :description, :string
      t.column :location, :string
      t.column :start_date, :date
      t.column :end_date, :date
      t.column :start_time, :time
      t.column :end_time, :time

      t.timestamps
    end
  end
end
