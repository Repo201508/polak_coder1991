class ContactsController < ApplicationController
	#before_action :set_contact, only: [:create]

	def new
  		@contact = Contact.new
  	end

  	def create
  		@contact = Contact.new(contact_params)

  		respond_to do |f|
      		if @contact.save
        		ContactMailer.contact_email(@contact).deliver_now
        		f.html { redirect_to root_path, notice: 'Mail sended!' }
      		else
        		f.html { render :new } #render :nothing => true, :status => 200
   			end
    	end
  	end


  	private
  		def set_contact
  			@contact = Contact.find(params[:id])
  		end

  		def contact_params
  			params.require(:contact).permit(:email, :content)
  		end



end
