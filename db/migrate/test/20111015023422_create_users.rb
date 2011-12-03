class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :purpose
      t.string :title
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.text :street
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.string :phone_number
      t.string :dob
      t.string :email
      t.string :r_email
      t.string :username
      t.string :password
      t.string :r_password
      t.string :secret_q
      t.string :secret_a

      t.timestamps

    end
    end


  end







