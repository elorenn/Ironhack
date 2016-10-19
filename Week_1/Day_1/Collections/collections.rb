class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

 array_of_languages = [ruby, python, javascript, go, rust, swift, java]

def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end
puts ""
puts "Array of Languages:"
array_printer(array_of_languages)
puts ""
puts ""
aged_languages = array_of_languages.map do |language|
	# language = ProgrammingLanguage.new(language.name, language.age + 1, language.type)
  new_age = language.age + 1
  ProgrammingLanguage.new(language.name, new_age, language.type)
end

puts "Programming languages aged one year: "
array_printer(aged_languages)

puts ''
puts ''

sorted_languages_1 = array_of_languages.sort_by {|language| language.age}

puts "Languages sorted by age (ascending):"
array_printer(sorted_languages_1)
puts ""


#using spaceship operator: 
sorted_languages = aged_languages.sort do |language_a, language_b|
  #switch a and b to get descending order (highest first)
  language_b.age <=> language_a.age 
end

puts "Aged languages sorted by age (descending):"
array_printer( sorted_languages )

puts ""
puts "--------------"

#no_java = []
#no_java = sorted_languages.delete_at(4)
#array_printer(sorted_languages)

# no_java2 = sorted_languages.delete_if { |language| language.age == 20}
# array_printer(sorted_languages)

sorted_languages.delete_if do |language|
  language.name == "Java"
end

puts "Sorted languages without Java:"
array_printer(sorted_languages)
 puts ""
 puts ""

# array_printer(sorted_languages.shuffle)
# puts "---"
# array_printer(sorted_languages.shuffle)

# ruby_first = sorted_languages.rotate(5)
# array_printer(ruby_first)

puts "---------"


fetch_ruby = sorted_languages.fetch(5).name
puts fetch_ruby
