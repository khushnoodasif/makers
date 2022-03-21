class TodoList

  def initialize(name) 
    @name = name
    @todo = []
  end

  def add(task) 
    if task != ""
      @todo << task
    else
      return "Please enter a task."
    end
  end

  def see_task_list()
    if @todo.empty?
      return "#{@name}: No tasks to do!"
    else
      return "#{@name}: #{@todo.join(", ")}"
    end
  end

  def completed_tasks(task)
    if @todo.include?(task)
      @todo.delete(task)
      return "#{@name}: #{task} is completed!"
    else
      return "Task not found."
    end
  end
end