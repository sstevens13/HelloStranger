class Visible < ActiveRecord::Base
  attr_accessible :hidden_user, :user_of_interest
  has_many :users

  validates_uniqueness_of :hidden_user, :scope => :user_of_interest
  
end

