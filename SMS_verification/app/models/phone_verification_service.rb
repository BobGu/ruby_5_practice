class PhoneVerificationService
  attr_reader :user

  def initialize(options)
    @user = User.find(options[:user_id])
  end

  def process
    send_sms
  end

  private

  def from
    "+17403264662"
  end

  def to
    "+1#{user.phone_number}"
  end

  def body
    "Please reply with this code #{user.phone_verification_code} to confirm
     your phone number"
  end

  def twilio_client
    @twilio ||= Twilio::REST::Client.new(Figaro.env.account_sid, Figaro.env.auth_token)
  end

  def send_sms
    Rails.logger.info "SMS: From: #{from} To: #{to} Body: \"#{body}\""

    twilio_client.account.messages.create(
      from:from,
      to: to,
      body: body
    )
  end


end
