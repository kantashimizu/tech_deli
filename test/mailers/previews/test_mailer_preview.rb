# Preview all emails at http://localhost:3000/rails/mailers/test_mailer
class TestMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/test_mailer/sendmaild_confirm
  def sendmaild_confirm
    TestMailer.sendmaild_confirm
  end

end
