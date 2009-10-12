class Event < ActiveRecord::Base
  has_many :risks
  has_many :goals, :through => :risks
end
