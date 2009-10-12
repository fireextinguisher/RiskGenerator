class Risk < ActiveRecord::Base
  belongs_to :event
  belongs_to :goal
end
