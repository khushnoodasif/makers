class TodoList
  def initialize
    @todo_list = []
    @complete_list = []
  end

  def add(todo)
    if @todo_list << todo
      return @todo_list
    else @todo_list.empty?
      return "Please enter your task"
    end
  end

  def incomplete
    @todo_list
  end

  def complete
   @todo_list.each do |todo|
     if todo.done?
       @complete_list << todo
       @todo_list.delete(todo)
     end
   end
    @complete_list
  end

  def give_up!()
    @todo_list.each do |todo|
      todo.mark_done!
    end
  end
end