class NotificationMailer < ApplicationMailer

default from: 'notifications@example.com'

def welcome_email(user)
  @user = user
  @url = 'http://roel.cantu@yahoo.com/login'
  mail(to: @user.email, subject: 'Welcome ty my Awesome Site')
end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.new_user.subject
  #
  def new_user
    @greeting = "Hi"

    mail to: "roel.cantu@yahoo.com"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.new_post.subject
  #
  def new_post
    @greeting = "Hi"

    mail to: "roel.cantu@yahoo.com"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.new_comment.subject
  #
  def new_comment(comment)
    @comment = comment

    mail to: comment.post_author_email, subject: 'New Comment On Post'
  end
end
