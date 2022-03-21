require 'task_list'
require 'task'

RSpec.describe "tasks integration" do
  it "adds tasks to a list" do
    task_list = TaskList.new
    task = Task.new("Today I went to the park")
    task2 = Task.new("Today I went to the school")
    task_list.add(task)
    task_list.add(task2)
    expect(task_list.all).to eq [task, task2]
  end
end