class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :image
      t.references :post, null: true, foreign_key: true
      t.references :story, null: true, foreign_key: true
      t.references :imageable, polymorphic: true

      t.timestamps
    end
  end
end
