class DiscordMessenger
  WEBHOOK_URL = ENV['WEBHOOK_URL']

  def self.send(message)
    client = Discordrb::Webhooks::Client.new(url: WEBHOOK_URL)
    client.execute do |builder|
      builder.content = "#{message}"
    end
  end
end
