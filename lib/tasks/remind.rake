require 'discordrb/webhooks'

namespace :reminder do
  desc 'リマインド実行'
  task call: :environment do
    reminders = Reminder.where(remind_at: (5.minutes.ago)..(5.minutes.since))
    WEBHOOK_URL = ENV['WEBHOOK_URL']
    client = Discordrb::Webhooks::Client.new(url: WEBHOOK_URL)

    reminders.each do |reminder|
      client.execute do |builder|
        builder.content = "#{reminder.message}"
      end
    end
  end
end
