require 'rubygems'
require 'twilio-ruby'

class OrderConfirmation
  def initialize(requester)
    @requester = requester
  end

  def send_text(account_sid, auth_token, from, to, body)
    account_sid = ENV['account_sid']
    auth_token = ENV['auth_token']
    @client = @requester.new account_sid, auth_token
    @client.account.messages.create(
      from: '+441234123456',
      to: @requester.number_request,
      body: "Thank you for your order! Your total is £#{@requester.total}. Your order will be delivered before #{time}."
    )
  end

  def time
    Time.now.strftime("%H:%M")
  end
end