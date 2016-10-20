
require "ruby-dictionary"
require_relative("lib/wordchain.rb")

the_dictionary = Dictionary.from_file("/usr/share/dict/words")

exercise = WordChain.new(the_dictionary)

exercise.find_chain("lead", "gold")



