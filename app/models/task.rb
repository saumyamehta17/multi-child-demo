class Task < ActiveRecord::Base
  attr_accessible :name
  
  belongs_to :project
end
