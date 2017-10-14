class CreateHotspots < ActiveRecord::Migration[5.1]
  def change
    create_table :hotspots do |t|
      t.string  :name,          null: false
      t.string  :latitude,      null: false
      t.string  :longitude,     null: false
      t.text    :description
      t.integer :visits_count,  null: false, default: 0

      t.timestamps
    end
  end
end
