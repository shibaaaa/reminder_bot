class IntervalReminder < Reminder
  validates :interval_seconds, presence: true

  def remind
    DiscordMessenger.send(message, webhook_url)
    update(remind_at: remind_at + interval_seconds)
  end
end
