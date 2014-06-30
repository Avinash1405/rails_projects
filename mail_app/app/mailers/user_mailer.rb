class UserMailer < ActionMailer::Base
  default from: "tavinash494@gmail.com"

  def welcome_email
    @url  = 'http://example.com/login'
    mail(to: "t.avinash.53823@gmail.com", subject: 'Welcome to My Awesome Site')
    attachments['attachment'] = File.read("/home/avinash/Desktop/avinash/resume/attachment")
  end
#  def receive(email)
#     page = Page.find_by(address: email.to.first)
#     page.emails.create(
#       # subject: email.subject,
#       # body: email.body
#       puts email.subject
#       puts email.body
#     )
# end


  def receive(message)
    for recipient in message.to
      User.find_by_email(recipient).update_attribute(:bio, message.body)
    end
  end
end
