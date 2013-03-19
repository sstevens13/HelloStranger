class Favorite < ActiveRecord::Base
  attr_accessible :liked_user, :liking_user
end
