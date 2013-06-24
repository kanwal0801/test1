class AddUserIdToAlbum < ActiveRecord::Migration
  def change
   change_table :albums do |t|
    t.references :user
  end
  end
end
