require 'todo'
require 'todo_list'

RSpec.describe "Integration tests" do
  it "adds todo to the list" do
    todo_list = TodoList.new
    task = Todo.new("Another test")
    todo_list.add(task)
    result = todo_list.incomplete
    expect(result).to eq [task]
  end

  it "adds incomplete todo to the list" do
    todo_list = TodoList.new
    task = Todo.new("Another test")
    task_1 = Todo.new("Another one test")
    todo_list.add(task)
    todo_list.add(task_1)
    task.mark_done!
    result = todo_list.complete
    expect(result).to eq [task]
  end

  it "removes todo from the list which is complete" do
    todo_list = TodoList.new
    task = Todo.new("Another test")
    task_1 = Todo.new("Another one test")
    todo_list.add(task)
    todo_list.add(task_1)
    task.mark_done!
    todo_list.complete
    result = todo_list.incomplete
    expect(result).to eq [task_1]
  end

  it "returns empty list if all todos are complete" do
    todo_list = TodoList.new
    task = Todo.new("Another test")
    todo_list.add(task)
    task.mark_done!
    todo_list.complete
    result = todo_list.incomplete
    expect(result).to eq []
  end

  it "all todos are completed" do
    todo_list = TodoList.new
    task = Todo.new("Another test")
    task_1 = Todo.new("Another one test")
    todo_list.add(task)
    todo_list.add(task_1)
    todo_list.give_up!
    expect(todo_list.complete).to eq [task]
  end
end