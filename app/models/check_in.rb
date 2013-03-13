class CheckIn < ActiveRecord::Base
  attr_accessible :event_id, :user_id
  # has_many :users
  belongs_to :event
  belongs_to :user

  validates_uniqueness_of :event_id, :scope => :user_id
#  validates_uniqueness_of :user_id, :scope => :present

end
