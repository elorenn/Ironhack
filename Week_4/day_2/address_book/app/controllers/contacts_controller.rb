class ContactsController < ApplicationController

	def index
		@contacts = Contact.order(name:"asc")

		render 'index'
	end

	def new 
		@the_contact = Contact.new
		render 'new'
	end

	def create
		@the_contact = Contact.new(
			:name => params[:contact][:name],
			:address => params[:contact][:address],
			:phone_number => params[:contact][:phone_number],
			:email_address => params[:contact][:email_address])
		@the_contact.save

			redirect_to('/contacts')
	end

	def show
		@contact = Contact.find(params[:project_id])

		render 'show'
	end
end
