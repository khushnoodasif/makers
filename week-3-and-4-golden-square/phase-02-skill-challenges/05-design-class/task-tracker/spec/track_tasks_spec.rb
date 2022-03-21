require 'track_tasks'

RSpec.describe TodoList do
  it "returns tasks" do
    new_task = TodoList.new("Groceries")
    new_task.add("Milk")
    expect(new_task.see_task_list).to eq "Groceries: Milk"
  end

  it "returns multiple tasks" do
    new_task = TodoList.new("Groceries")
    new_task.add("Milk")
    new_task.add("Eggs")
    new_task.add("Bread")
    expect(new_task.see_task_list).to eq "Groceries: Milk, Eggs, Bread"
  end

  it "returns multiple tasks" do
    new_task = TodoList.new("Kush")
    new_task.add("Cannabis")
    new_task.add("Cocaine")
    new_task.add("Marijuana")
    expect(new_task.see_task_list).to eq "Kush: Cannabis, Cocaine, Marijuana"
  end

  it "returns list with no tasks" do
    new_task = TodoList.new("Shopping")
    expect(new_task.see_task_list).to eq "Shopping: No tasks to do!"
  end

  it "returns task is completed" do
    new_task = TodoList.new("Groceries")
    new_task.add("Milk")
    expect(new_task.completed_tasks("Milk")).to eq "Groceries: Milk is completed!"
  end

  it "returns empty list if a task is completed" do
    new_task = TodoList.new("Groceries")
    new_task.add("Milk")
    new_task.completed_tasks("Milk")
    expect(new_task.see_task_list).to eq "Groceries: No tasks to do!"
  end

  it "returns empty list if a task is empty" do
    new_task = TodoList.new("Groceries")
    expect(new_task.see_task_list).to eq "Groceries: No tasks to do!"
  end
end