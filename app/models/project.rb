class Project < ActiveRecord::Base
  attr_accessible :name, :task_attributes
  has_many :tasks

  def task_attributes=(task_attributes)
    #  task_attributes
    #=> {"4"=>{"name"=>"eee"}, "5"=>{"name"=>"zzz"}, "6"=>{"name"=>""}}
    # Its a hash, but when you loop it throught each the you should pass two arguments like:
    # task_attributes.each do |id, attr|
    #
    # but as you are using only one argument then ruby make the key valye pair an array like:
    #
    # task_attributes.each {|e| puts e }
    # =>
    # ["4", {"name"=>"eee"}]
    # ["5", {"name"=>"zzz"}]
    # ["6", {"name"=>""}]
    #
    # this is the real output, you can see what it was initially and what you made it by defining
    # each with single arguments
    # dhyan rekha ker werna errors aate rahenge or tuje samajh b ne aayega or time lagta rahega tera

    task_attributes.each do |attr|
      self.tasks.build(attr)
    end
  end

end
