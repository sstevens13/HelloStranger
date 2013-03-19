class Event < ActiveRecord::Base
  attr_accessible :event_date, :location_id
  belongs_to :location
  has_many :check_ins
  validates :event_date, :presence => {:message => "Date can not be blank"}

  def check_ins
    User.where(event_id: self.id)
  end

end
