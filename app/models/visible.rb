class Visible < ActiveRecord::Base
  attr_accessible :hidden_user, :user_of_interest
  has_many :users
end

