class Location < ActiveRecord::Base
  attr_accessible :address, :name
  has_many :events
end
