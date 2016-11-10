class TimeEntry < ApplicationRecord
	belongs_to :project 
	# assumes this has a project table

	validates :hours, presence: true
	validates :hours, numericality: { greater_than_or_equal_to: 0 }

	validates :minutes, presence: true
	validates :minutes, :numericality => { :greater_than_or_equal_to => 0 }
	validates :minutes, :numericality => { :less_than => 60 }

	validates :date, presence: true
end
