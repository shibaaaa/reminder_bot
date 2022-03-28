class Reminder < ApplicationRecord
  def self.remind
    reminders = Reminder.where(remind_at: (5.minutes.ago)..(5.minutes.since))
    reminders.each(&:remind)
  end
end
