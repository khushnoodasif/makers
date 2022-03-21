require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour

  context "after adding tasks" do 
    it "returns all tasks" do
      task_list = TaskList.new
      task = double(:task)
      task_list.add(task)
      expect(task_list.all).to eq [task]
    end

    it "returns true if all tasks are complete" do
      task_list = TaskList.new
      task = double(:faketask, complete?: true)
      task_list.add(task)
      expect(task_list.all_complete?).to eq true
    end

    it "returns true if all tasks are complete" do
      task_list = TaskList.new
      task = double(:faketask)
      task_list.add(task)
      allow(task).to receive(:complete?).and_return(true)
      expect(task_list.all_complete?).to eq true
    end

    it "returns false if some tasks not complete" do
      task_list = TaskList.new
      task = double(:faketask, complete?: true)
      task_1 = double(:faketask, complete?: false)
      task_2 = double(:faketask, complete?: true)
      task_list.add(task)
      task_list.add(task_1)
      task_list.add(task_2)
      expect(task_list.all_complete?).to eq false
    end
  end  
end


