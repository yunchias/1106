class AddFieldnameToTablename < ActiveRecord::Migration
  def change
    add_column :users, :purpose, :string
  end
end
