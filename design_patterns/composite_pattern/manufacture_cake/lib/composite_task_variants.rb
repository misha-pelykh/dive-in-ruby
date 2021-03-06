class CompositeTask < Task
  def initialize(name)
    super(name)
    @sub_tasks = []
  end

  def <<(task)
    @sub_tasks << task
  end

  def [](index)
    @sub_tasks[index]
  end

  def []=(index, new_value)
    @sub_tasks[index] = new_value
  end

  def remove_sub_task(task)
    @sub_tasks.delete(task)
  end

  def get_time_required
    time = 0.0
    @sub_tasks.each {|task| time += task.get_time_required }
    time
  end
end

# We could also get the same container operator effect with our CompositeTask
# by simply making it a subclass of Array instead of Task:
class CompositeTaskBad < Array
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def get_time_required
    time = 0.0
    each {|task| time += task.get_time_required}
    time
  end
end
