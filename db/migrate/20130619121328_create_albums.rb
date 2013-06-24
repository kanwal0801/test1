class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.attachment :thumb
   
    
      t.timestamps
    end
add_index :albums, :user_id
  end
end
