class CreateAlbumOwneds < ActiveRecord::Migration
  def change
    create_table :albums_owned do |t|
      t.date :datewished
      t.date :dateacquired

      t.timestamps
    end
  end
end
