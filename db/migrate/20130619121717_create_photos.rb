class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.attachment :image
      t.references :album

      t.timestamps
    end
    add_index :photos, :album_id
  end
end
