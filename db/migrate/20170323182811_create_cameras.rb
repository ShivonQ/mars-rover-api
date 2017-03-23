class CreateCameras < ActiveRecord::Migration[5.0]
  def change
    create_table :cameras do |t|
      t.string :name
      t.string :fullName
      t.references :rover_id, foreign_key: true
      t.string :rover_manifest

      t.timestamps
    end
  end
end
