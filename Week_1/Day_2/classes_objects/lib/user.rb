class User #classes should be capitalized 
	def initialize(name, email, age, ethnicity, gender)
		@name = name
		@email = email
		@age = age
		@ethnicity = ethnicity
		@gender = gender
	end
	def login
		puts ""
		puts "#{@name} is logging in with email #{@email}"
		puts ""
	end

	def greet
		puts ""
		puts "Hello, my name is #{@name}."
		puts "I am #{@age} years old."
		puts ""
	end

# 	attr_reader(:name, :email, :age, :ethnicity, :gender)

# # attr_reader saves you from writing methods for all the instance variables @
# 	# def name
# 	# 	@name
# 	# end


# 	attr_writer(:age, :ethnicity)
# # attr_writer lets you write over instance variables	
# # basically, attr_writer does these methods for you:
# 	# def age = (new_age)
# 	# 	@age = new_age
# 	# end
# 	# def ethnicity = (new_ethnicity)
# 	# 	@ethnicity = new_ethnicity
# 	# end

	attr_accessor(:name, :email, :age, :ethnicity, :gender)
# attr_accessor does both attr_reader AND attr_writer in one step	

end
