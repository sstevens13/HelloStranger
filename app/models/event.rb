class Event < ActiveRecord::Base
  attr_accessible :end, :location_id, :start
  belongs_to :location
  has_many :check_ins

  def check_ins
    User.where(event_id: self.id)
  end

end
