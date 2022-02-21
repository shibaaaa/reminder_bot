class CreateReminders < ActiveRecord::Migration[7.0]
  def change
    create_table :reminders do |t|
      t.datetime :remind_at
      t.string :message
      t.integer :interval_seconds
      t.string :type

      t.timestamps
    end
  end
end
