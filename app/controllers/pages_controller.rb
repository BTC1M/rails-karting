class PagesController < ApplicationController

  skip_before_action :verify_authenticity_token

  def home
    # ContactMailer.contact().deliver
  end

  def send_contact
    ContactMailer.contact(params[:message]).deliver
  end

end
