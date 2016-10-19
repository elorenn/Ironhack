class HourlyEmployee < Employee
	#attr_accessor(:name, :email, :hourly_rate, :hourly_worked)
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
    	salary = @hourly_rate * @hours_worked
    	#tax = salary * 0.18
    	#salary_after_tax = salary - tax 
      #returns the hours worked * hourly_rate
# #take out the taxes in the payroll instead      
    end
end