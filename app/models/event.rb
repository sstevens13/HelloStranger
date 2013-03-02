class Event < ActiveRecord::Base
  attr_accessible :end, :location_id, :start
  has_one :location
end
