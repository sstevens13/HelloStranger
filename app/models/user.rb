class User < ActiveRecord::Base
  attr_accessible :age, :event_id, :gender, :orientation, :religion, :username, :password, :hobbies, :profile, :visible, :avatar
  has_secure_password
  has_many :events
  has_one :location
  has_one :photo
  has_many :visibles
  validates_uniqueness_of :username
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

end
