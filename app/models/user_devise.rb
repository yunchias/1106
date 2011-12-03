class UserDevise < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :purpose, :email, :password, :first_name, :last_name, :street, :city, :state,
                  :country, :zipcode, :r_email, :username, :r_password, :secret_q, :secret_a,
                  :password_confirmation, :remember_me, :user_status

  validates_presence_of :purpose, :first_name, :last_name, :street, :city, :state, :country, :zipcode,
                        :r_email, :username, :r_password, :secret_q, :secret_a

  validates_uniqueness_of :username

end
