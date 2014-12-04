class Artist < ActiveRecord::Base
  attr_accessible :debutdate, :name
  has_many :albums

  validates_presence_of :name
end
