class Event < ActiveRecord::Base

  def send_text_message
  @client = Twilio::REST::Client.new  ENV["account_sid"], ENV["auth_token"]

    Twilio.configure do |config|
      config.account_sid = ENV["account_sid"]
      config.auth_token = ENV["auth_token"]
    end
    @client.messages.create(
      :from => "+1#{ENV["twilio_phone_number"]}",
      :to => "5103253257",
      :body => details
    )
  end


end



