require_relative("lib/employee.rb")
require_relative("lib/hourly_employee.rb")
require_relative("lib/salaried_employee.rb")
require_relative("lib/multipayment_employee.rb")
require_relative("lib/payroll.rb")


josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
marc = HourlyEmployee.new('Marc', 'marc@example.com', 15, 40)


employees = [josh, nizar, ted, marc]

puts ""

payroll = Payroll.new(employees)
payroll.pay_employees
# josh => 1750
# nizar => 19230
# etc
# etc


# # we cannot call the notify_employee method because it is "private"
#payroll.notify_employee 