class TimeEntry < ApplicationRecord
	belongs_to :project 
	# assumes this has a project table
end
