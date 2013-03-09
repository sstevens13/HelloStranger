class CheckIn < ActiveRecord::Base
  attr_accessible :event_id, :user_id
  # has_many :users
  belongs_to :event
  belongs_to :user

end
