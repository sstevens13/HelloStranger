class Event < ActiveRecord::Base
  attr_accessible :end, :location_id, :start
end
