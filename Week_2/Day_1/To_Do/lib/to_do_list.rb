require_relative("task.rb")

class ToDoList
    attr_reader :tasks

    def initialize
        @tasks = []
    end

    def add_task(new_task)
    	@tasks.push(new_task)
    end

    def delete_task(task_id)
    	@tasks.delete_if { |task| @id = task_id }
    end
end

# list = ToDoList.new 
# list.add_task("Do laundry")
# @tasks