class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :item_desc
      t.decimal :item_price
      t.string :item_cond
      t.integer :user_id

      t.timestamps
    end
  end
end
