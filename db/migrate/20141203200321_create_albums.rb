class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.date :publicationdate

      t.timestamps
    end
  end
end
