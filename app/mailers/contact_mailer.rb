class ContactMailer < ApplicationMailer
  default from: "from@example.com"

  def contact(message)
    @message = message
    mail(to: 'francky1601@yahoo.com', subject: 'Test')
  end

end
