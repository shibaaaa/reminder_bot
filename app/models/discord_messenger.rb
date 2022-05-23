class DiscordMessenger
  def self.send(message, url)
    client = Discordrb::Webhooks::Client.new(url: url)
    client.execute do |builder|
      builder.content = message
    end
  end
end
