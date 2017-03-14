class CreateFaveImgs < ActiveRecord::Migration[5.0]
  def change
    create_table :fave_imgs do |t|
      t.string :rover
      t.string :cam_name
      t.string :image_date
      t.string :url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
