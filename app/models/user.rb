class User < ActiveRecord::Base

validates  :first_name, :last_name, :street, :city, :state, :country, :zipcode,
           :email, :r_email, :username, :password, :r_password, :secret_q, :secret_a,  :presence =>  true

validates :email, :r_email, :username, :uniqueness => true

end