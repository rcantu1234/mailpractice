require "rails_helper"

RSpec.describe NotificationMailer, type: :mailer do
  describe "new_user" do
    let(:mail) { NotificationMailer.new_user }

    it "renders the headers" do
      expect(mail.subject).to eq("New user")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "new_post" do
    let(:mail) { NotificationMailer.new_post }

    it "renders the headers" do
      expect(mail.subject).to eq("New post")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "new_comment" do
    let(:mail) { NotificationMailer.new_comment }

    it "renders the headers" do
      expect(mail.subject).to eq("New comment")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
