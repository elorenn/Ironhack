class ContactsController < ApplicationController
	def index
		@contacts = Contacts.order(created_at: :desc) 
	end
end
