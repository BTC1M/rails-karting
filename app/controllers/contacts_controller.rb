class ContactsController < ApplicationController

  skip_before_action :verify_authenticity_token

  # def new
  #   @contact = Contact.new
  # end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    # if verify_recaptcha && @contact.deliver
    if @contact.deliver
      flash.now[:notice] = 'Merci pour votre message ! Nous vous recontacterons au plus vite'
    else
      flash.now[:error] = "Le message n'a pas pu être envoyé, réactualisez la page puis rééssayez"
    end
  end

end
