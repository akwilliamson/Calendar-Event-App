class RenameEvents < ActiveRecord::Migration
  def change
    rename_table :events_classes, :events
  end
end
