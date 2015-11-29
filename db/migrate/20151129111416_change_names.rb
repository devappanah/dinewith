class ChangeNames < ActiveRecord::Migration
  def change
    rename_column :events, :longtitude, :longitude
  end
end
