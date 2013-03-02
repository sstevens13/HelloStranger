class User < ActiveRecord::Base
  attr_accessible :age, :event_id, :gender, :orientation, :religion, :username
  has_many :events
  has_one :location
end
