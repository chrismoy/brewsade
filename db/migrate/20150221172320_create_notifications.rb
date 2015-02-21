class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :message
      t.string :recipient

      t.timestamps null: false
    end
  end
end
