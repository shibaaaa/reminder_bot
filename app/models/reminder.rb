class Reminder < ApplicationRecord
  validates :channel_name, presence: true
  validates :message,      presence: true
  validates :remind_at,    presence: true
  validates :type,         presence: true
  validates :webhook_url,  presence: true

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
