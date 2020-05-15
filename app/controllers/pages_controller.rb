class PagesController < ApplicationController

  # skip_before_action :verify_authenticity_token

  def home
    @contact = Contact.new
  end

end
