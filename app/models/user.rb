class User < ActiveRecord::Base
  attr_accessible :age, :event_id, :gender, :orientation, :religion, :username, :password, :hobbies, :profile, :visible, :avatar, :check_in_id
  has_secure_password
  has_many :events, :through => :check_ins
  has_one :location
  has_one :photo
  has_many :visibles
  has_many :check_ins
  validates_uniqueness_of :username
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  before_create :set_visible

  private
    def set_visible
      if self.gender.eql? "F"
        self.visible = 0  
        # using false broke the function somehow
      else
        self.visible = 1
      end
    end

end
