class AddWebhookUrlAndChannelNameToReminders < ActiveRecord::Migration[7.0]
  def change
    change_table(:reminders) do |t|
      t.string :webhook_url, null: false
      t.string :channel_name, null: false
    end
  end
end
