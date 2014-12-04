class Album < ActiveRecord::Base
  belongs_to :artist

  attr_accessible :name, :publicationdate
  

  validates_presence_of :name
end
