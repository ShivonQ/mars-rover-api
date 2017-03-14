class CreateRoverManifests < ActiveRecord::Migration[5.0]
  def change
    create_table :rover_manifests do |t|
      t.string :name
      t.string :landing_date
      t.string :launch_date
      t.string :status
      t.integer :max_sol
      t.string :max_date
      t.string :portrait
      t.integer :total_photos

      t.timestamps
    end
  end
end
