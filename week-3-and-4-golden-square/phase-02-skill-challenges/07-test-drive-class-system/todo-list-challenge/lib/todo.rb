class Todo
  def initialize(task)
    @task = task
  end

  def task
    fail "Please enter your task" if @task.empty?
    @task
  end

  def mark_done!
    fail "Already marked" if @task.include? "@done"
    @task += "@done"
  end

  def done?
    if @task.include? "@done"
      return true
    else
      return false
    end
  end
end