require_relative("yearly_salary.rb")

class MultiPaymentEmployee < Employee
    include YearlySalary

    def initialize(name, email, yearly_salary, hourly_rate, hours_worked)
        @name = name
        @email = email
        @yearly_salary = yearly_salary
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      extra_salary = @hourly_rate * (@hours_worked - 40)
      salary = calculate_yearly_salary + extra_salary
## subtract taxes in payroll instead      
    end
end