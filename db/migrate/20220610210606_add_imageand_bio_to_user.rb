class AddImageandBioToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :image, :string
    add_column :users, :bio, :text, null: false, default: ''
  end
end
