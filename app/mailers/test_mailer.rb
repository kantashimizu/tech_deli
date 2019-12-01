class TestMailer < ApplicationMailer
  default from: 'tamutomo223@gmail.com'

  def sendmaild_confirm
    mail(to:"nao20011225takeshi@gmail.com", subject:'注文きた')
  end
end
