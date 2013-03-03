class Photo < ActiveRecord::Base
  attr_accessible :binary_data, :content_type, :description, :filename
  belongs_to :user
end
