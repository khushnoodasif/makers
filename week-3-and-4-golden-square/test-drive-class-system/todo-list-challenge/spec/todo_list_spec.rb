require 'todo_list'

RSpec.describe TodoList do
  it "adds todo to the list" do
  new_todolist = TodoList.new
  expect(new_todolist.add("Another test")).to eq ["Another test"]
  end

  xit "if todo is empty string returns error" do
  new_todolist = TodoList.new
  expect(new_todolist.add("")).to eq ["Please enter your task"]
  end

  xcontext "if no todo given" do
    it "fails" do
    new_todolist = TodoList.new
    expect { new_todolist.add("") }.to raise_error "Please enter your task"
    end
  end
end