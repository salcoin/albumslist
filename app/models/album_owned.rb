class AlbumOwned < ActiveRecord::Base
  self.table_name = "albums_owned"
  attr_accessible :dateacquired, :datewished

  belongs_to :user
  belongs_to :album
end
