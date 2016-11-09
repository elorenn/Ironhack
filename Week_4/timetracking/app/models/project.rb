class Project < ApplicationRecord
	has_many :time_entries
	#project id of the TimeEntry model
end
