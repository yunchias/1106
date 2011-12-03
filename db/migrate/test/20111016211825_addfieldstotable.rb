class Addfieldstotable < ActiveRecord::Migration
  def change
    add_column :user_devises, :title, :string
    add_column :user_devises, :first_name, :string
    add_column :user_devises, :middle_name, :string
    add_column :user_devises, :last_name, :string
    add_column :user_devises, :street, :text
    add_column :user_devises, :city, :string
    add_column :user_devises, :state, :string
    add_column :user_devises, :country, :string
    add_column :user_devises, :zipcode, :string
    add_column :user_devises, :phoneNumber, :string
    add_column :user_devises, :DateOfBirth_Month, :string
    add_column :user_devises, :DateOfBirth_Day, :integer
    add_column :user_devises, :DateOfBirth_Year, :string

  end

end
