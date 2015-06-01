class CreateMapMarkers < ActiveRecord::Migration
  def change
    create_table :map_markers do |t|
      t.references :bulletin, index: true, foreign_key: true
      t.string :long_lat

      t.timestamps null: false
    end
  end
end
