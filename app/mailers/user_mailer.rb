class UserMailer < ActionMailer::Base
  default from: 'notifications@example.com'

   def order_confirmation(user)
     @user = user
     @url  = 'http://example.com/login'
     mail(to: user.email, subject: 'Order Confirmation')
   end
end
