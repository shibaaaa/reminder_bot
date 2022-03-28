class IntervalReminder < Reminder
  def remind
    DiscordMessenger.send(message)
    update(remind_at: remind_at + interval_seconds)
  end
end
