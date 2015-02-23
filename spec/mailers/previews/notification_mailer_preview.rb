# Preview all emails at http://localhost:3000/rails/mailers/notification_mailer
class NotificationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notification_mailer/new_user
  def new_user
    NotificationMailer.new_user
  end

  # Preview this email at http://localhost:3000/rails/mailers/notification_mailer/new_post
  def new_post
    NotificationMailer.new_post
  end

  # Preview this email at http://localhost:3000/rails/mailers/notification_mailer/new_comment
  def new_comment
    NotificationMailer.new_comment
  end

end
