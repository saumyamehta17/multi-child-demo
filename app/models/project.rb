class Project < ActiveRecord::Base
  attr_accessible :name,:task_attributes
  has_many :tasks

  def task_attributes=(task_attributes)
    task_attributes.each do |attr|
      self.tasks.build(attr)
    end
  end
  
end
