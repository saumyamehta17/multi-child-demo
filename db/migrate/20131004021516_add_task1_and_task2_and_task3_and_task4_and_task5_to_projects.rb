class AddTask1AndTask2AndTask3AndTask4AndTask5ToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :task1, :string
    add_column :projects, :task2, :string
    add_column :projects, :task3, :string
    add_column :projects, :task4, :string
    add_column :projects, :task5, :string
  end
end
