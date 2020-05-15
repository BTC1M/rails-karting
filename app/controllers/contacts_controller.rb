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
      redirect_to "/#contact", flash: { notice: "Merci pour votre message ! Nous vous recontacterons au plus vite" }
    else
      redirect_to "/#contact", alert: { notice: "Le message n'a pas pu être envoyé" }
    end
  end

end
