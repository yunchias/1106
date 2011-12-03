require 'paperclip'

class Item < ActiveRecord::Base

  validates_numericality_of :item_price, :on => :update, :greater_than => 10

  attr_accessible :photo_updated_at
   attr_accessible :user_devises_id
   attr_accessible :bid_id
   attr_accessible :category_id
  attr_accessible :category_cname
  attr_accessible :item_name
   attr_accessible :item_desc
   attr_accessible :item_price
   attr_accessible :item_cond
   attr_accessible :photo
   attr_accessible :photo_file_name
   attr_accessible :photo_content_type
   attr_accessible :photo_file_size
   attr_accessible :photo_updated_at

   belongs_to :user
#   validates :user_id, :presence => true
   has_attached_file :photo,
                         :styles => { :medium => "300x300>",
                                 :thumb => "100x100>" }

end
