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

  def update_add_task_attr(task_attr)



  end
  #params[:project][:task_attributes].each_with_index i
  #  send "task#{i+1}=", x[:name]

end
