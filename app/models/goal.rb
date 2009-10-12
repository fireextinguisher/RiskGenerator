class Goal < ActiveRecord::Base
  has_many :risks
  has_many :events, :through => :risks
end
