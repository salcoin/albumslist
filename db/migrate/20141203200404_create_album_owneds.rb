class CreateAlbumOwneds < ActiveRecord::Migration
  def change
    create_table :album_owneds do |t|
      t.date :datewished
      t.date :dateacquired

      t.timestamps
    end
  end
end
