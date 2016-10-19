class Payroll
	attr_accessor(:employees)
    def initialize(employees)
        @employees = employees
    end

  def pay_employees
  	total_payroll = 0.0 
  	employees.each do |employee|
  		total_payroll += employee.calculate_salary
  	end
  	puts ""
  	puts "Total Payroll before Taxes is: "
  	puts "-------------------------------"
  	puts "$#{total_payroll}"
  	puts ""

  	employees.each do |employee|
  		puts "Employee: This weeks salary:"
  		puts "----------------------------"
  		puts "#{employee.name}: #{employee.calculate_salary}"
  		puts ""
  	end
      # Should output how much we're paying each employee for this week and the total amount spent on payroll this week. 
  end

# private means that the method that follows is a private method. 

  private 

# you might be able to end the private by typing "public"  

  def notify_employee
  		employees.each do |employee|
  			puts "Notification sent to #{employee.name} at #{employee.email}"
  			puts ""
  		end	
  end
end
