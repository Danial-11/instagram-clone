class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :caption, null: false, default: ''
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
