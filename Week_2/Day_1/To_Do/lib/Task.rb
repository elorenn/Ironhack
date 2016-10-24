class Task
    attr_reader :content, :id
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @completed = false 
        @created_at = Time.now 
    end

    def complete?
    	@completed
    end

    def complete! 
    	@completed = true
    end

    def make_incomplete!
    	@completed = false 
    end
end