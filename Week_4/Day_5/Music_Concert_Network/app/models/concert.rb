class Concert < ApplicationRecord

	validates :artist, presence: true
	validates :venue, presence: true
	validates :city, presence: true
	validates :date, presence: true
	validates :price, presence: true
	validates :price, :numericality => { :greater_than_or_equal_to => 0 }
	validates :description, presence: true 
end
