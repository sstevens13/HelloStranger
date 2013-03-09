class Event < ActiveRecord::Base
  attr_accessible :end, :location_id, :start
  belongs_to :location
  has_many :check_ins
end
