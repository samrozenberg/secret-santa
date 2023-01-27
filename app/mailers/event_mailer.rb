class EventMailer < ApplicationMailer
  def gift_assignment_email(event, giver, receiver)
    @event = event
    @giver = giver
    @receiver = receiver
    mail(to: giver.email, subject: "You have to offer a gift to #{receiver.name} for #{event.title}")
  end
end
