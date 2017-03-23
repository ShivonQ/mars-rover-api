class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.references :rover_id, foreign_key: true
      t.string :rover_manifest
      t.references :cam_id, foreign_key: true
      t.string :camera
      t.string :date

      t.timestamps
    end
  end
end
