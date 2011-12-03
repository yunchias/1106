class Addmorefieldstotable < ActiveRecord::Migration
 def change

    add_column :user_devises, :r_email, :string
    add_column :user_devises, :username, :string
    add_column :user_devises, :r_password, :string
    add_column :user_devises, :secret_q, :string
    add_column :user_devises, :secret_a, :string
 end
  end
