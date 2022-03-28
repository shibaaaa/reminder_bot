class SpotReminder < Reminder
  def remind
    DiscordMessenger.send(message)
  end
end
