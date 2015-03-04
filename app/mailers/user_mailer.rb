class UserMailer < ActionMailer::Base
  default from: "mailer@42itc.com"
  layout 'mailer'
end
