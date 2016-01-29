class Response < ActiveRecord::Base

  belongs_to :user

    def receive_text_message
  @client = Twilio::REST::Client.new  ENV["account_sid"], ENV["auth_token"]

    Twilio.configure do |config|
      config.account_sid = ENV["account_sid"]
      config.auth_token = ENV["auth_token"]
    end

  end


  def send_to_me(phone_number)
  @phone_number = phone_number
  response = Twilio::TwiML::Response.new do |r|
    r.Message to: "MY_NUMBER" do |msg|
      ms.From phone_number
      msg.Body rsvp
    end
  end
  response.text
end

end
