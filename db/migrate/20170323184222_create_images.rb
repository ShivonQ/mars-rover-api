class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.references :rover_manifest, foreign_key: true
      t.references :camera, foreign_key: true
      t.string :date
      t.string :url

      t.timestamps
    end
  end
end
