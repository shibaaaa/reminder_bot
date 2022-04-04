class SpotReminder < Reminder
  validates :interval_seconds, absence: true

  def remind
    DiscordMessenger.send(message)
  end
end
