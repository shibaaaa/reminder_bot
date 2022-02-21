class CreateReminders < ActiveRecord::Migration[7.0]
  def change
    create_table :reminders do |t|
      t.datetime :remind_at, null: false
      t.string :message, null: false
      t.integer :interval_seconds
      t.string :type, null: false

      t.timestamps
    end

    add_index :reminders, :remind_at
  end
end
