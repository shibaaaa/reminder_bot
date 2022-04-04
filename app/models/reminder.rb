class Reminder < ApplicationRecord
  def self.remind
    reminders = Reminder.where(remind_at: (5.minutes.ago)..(5.minutes.since))
    reminders.each(&:remind)
  end

  def interval_days=(days)
    self.interval_seconds = days.blank? ? nil : days.to_i.days
  end

  def interval_days
    return if interval_seconds.nil?

    self.interval_seconds / 1.day
  end
end
