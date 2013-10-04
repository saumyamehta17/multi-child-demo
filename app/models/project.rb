class Project < ActiveRecord::Base

  attr_accessible :name,:task_attributes

  has_many :tasks
  #, :dependent => :destroy

  def task_attributes=(task_attributes)
    task_attributes.each do |attr|
      tasks.build(attr)
    end
  end
  #accepts_nested_attributes_for :tasks , :allow_destroy => true ,
  #  :reject_if => proc {|attr| attr['name'].blank? }
  

end
