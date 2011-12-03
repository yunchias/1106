class Addfieldtotable < ActiveRecord::Migration
   def change
    add_column :user_devises, :purpose, :string
  end

end
