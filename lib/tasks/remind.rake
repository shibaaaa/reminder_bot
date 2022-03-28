require 'discordrb/webhooks'

namespace :reminder do
  desc 'リマインド実行'
  task call: :environment do
    Reminder.remind
  end
end
