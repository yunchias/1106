class Notifications < ActiveRecord::Migration
  def self.up
    create_table :Notifications do |t|
      t.references :user_id
      t.references :item_id
      t.text :message
      t.timestamps
    end

  def self.down
    drop_table :Notifications
  end
end