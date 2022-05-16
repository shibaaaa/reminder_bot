require 'discordrb/webhooks'

namespace :reminder do
  desc 'リマインド実行'
  task call: :environment do
    Reminder.remind

    # NOTE: heroku scheduler の実行時間を10分毎に設定している。
    #  しかし、00分台にタスクが実行されないという問題があった。つまり、20:50 に実行したら、次回実行時間は 21:10 になる。
    #  00分台にタスクを実行させたいため、50分台に実行されたタスクだけはスリープすることで活かし続けている。
    current_minutes = Time.current.min
    if (50..55).cover?(current_minutes)
      sleep (60 - current_minutes) * 60
      Reminder.remind
    end
  end
end
