class Reminder < ApplicationRecord
  def self.remind
    reminders = Reminder.where(remind_at: (5.minutes.ago)..(5.minutes.since))
    reminders.each(&:remind)
  end

  def interval_days=(days)
    return if days.blank?

    self.interval_seconds = days.to_i.days
  end

  def interval_days
    return if interval_seconds.nil?

    self.interval_seconds / (60 * 60 * 24)
  end
end
