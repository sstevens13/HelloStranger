class User < ActiveRecord::Base
  attr_accessible :age, :event_id, :gender, :orientation, :religion, :username, :password
  has_secure_password
  has_many :events
  has_one :location
  has_one :photo
  has_many :visibles
  validates_uniqueness_of :username

end
