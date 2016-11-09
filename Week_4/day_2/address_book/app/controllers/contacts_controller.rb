class ContactsController < ApplicationController
	def index
		@contacts = Contacts.order(created_at: :desc) 
	end

	def new 
		render 'new'
	end

	def create
		render(:text => "This route is contacts#create.")
	end
end
