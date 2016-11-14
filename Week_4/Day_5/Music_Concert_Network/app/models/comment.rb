class Comment < ApplicationRecord
	validates :user, presence: true
	validates :comment, presence: true

	belongs_to :concert 
end
