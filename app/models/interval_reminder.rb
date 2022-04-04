class IntervalReminder < Reminder
  validates :interval_seconds, presence: true

  def remind
    DiscordMessenger.send(message)
    update(remind_at: remind_at + interval_seconds)
  end
end
