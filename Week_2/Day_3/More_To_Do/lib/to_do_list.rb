require_relative("Task.rb")

class ToDoList
    attr_reader :tasks, :user

    def initialize(user)
        @tasks = []
        @user = user
    end

    def add_task(new_task)
    	@tasks << (new_task)
    end

    def delete_task(task_id)
    	@tasks.delete_if { |the_task| the_task.id == task_id }
    end

    def find_task_by_id(task_id)

        result = nil

        @tasks.each do |task|

            if task.id == task_id
                result = task
            end

        end
        result

        #@tasks.find { |the_task| the_task.id == task_id }
    end

    def sort_by_created
        sorted_tasks = @tasks.sort {|task1, task2| task1.created_at <=> task2.created_at}
        sorted_tasks
    end
end

# list = ToDoList.new 
# list.add_task("Do laundry")
# @tasks