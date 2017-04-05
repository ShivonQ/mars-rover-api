class CreateCameras < ActiveRecord::Migration[5.0]
  def change
    create_table :cameras do |t|
      t.string :name
      t.string :fullName
      t.references :rover_manifest, foreign_key: true

      t.timestamps
    end
  end
end
