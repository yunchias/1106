class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :cname
      t.integer :id

      t.timestamps
    end
  end
end
