class User < ActiveRecord::Base
  attr_accessible :age, :event_id, :gender, :orientation, :religion, :username, :password, :hobbies, :profile, :visible, :avatar, :check_in_id
  has_secure_password
  has_many :events, :through => :check_ins
  has_one :location
  has_one :photo
  has_many :visibles
  has_many :check_ins
  validates_uniqueness_of :username, :length => { :minimum => 3 }
  validates :age, :numericality => true
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  before_create :set_visible
  before_save :gendered?, :age?

  private
    def set_visible
      if self.gender.eql? "F"
        self.visible = 0  
        # using false broke the function somehow
      else
        self.visible = 1
      end
    end

    def gendered?
      if !(self.gender.eql? "F") && !(self.gender.eql? "M")
        return false
      end
    end

    def age?
      if (self.age <= 18)
        errors.add(:age, "You must be at least 18 years old")
        return false
      end
    end

end
