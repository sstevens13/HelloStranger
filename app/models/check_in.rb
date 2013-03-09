class CheckIn < ActiveRecord::Base
  attr_accessible :event_id, :user_id
  # has_many :users
  belongs_to :event
  belongs_to :user


  validates_uniqueness_of :event_id, :scope => :user_id


  # def unique_check_in
  #   if where(:event_id, :user_id).nil?
  #     errors.add(:uniqueness, "sorry, this is not a unique check-in")
  #   end
    
  # end

end
