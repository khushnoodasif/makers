require 'todo'

RSpec.describe Todo do
  it "returns given task" do
    new_todo = Todo.new("This is a test")
    expect(new_todo.task).to eq "This is a test"
  end

  context "if empty string given" do
    it "fails" do
    new_todo = Todo.new("")
    expect { new_todo.task }.to raise_error "Please enter your task"
    end
  end

  context "if has been done" do
    it "returns done" do
    new_todo = Todo.new("wash your socks")
    expect(new_todo.mark_done!).to eq "wash your socks@done"
    end
  end

  context "if has been done" do
    it "returns done" do
    new_todo = Todo.new("wash your socks")
    new_todo.mark_done!
    expect(new_todo.done?).to eq true
    end
  end
end