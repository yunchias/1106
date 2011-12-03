class Bid < ActiveRecord::Base

 attr_accessible :user_devises_id
  attr_accessible :item_id
  attr_accessible :item_price
has_many :line_items, :dependent => :destroy

end
