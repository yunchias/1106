class Addcatnametoitems < ActiveRecord::Migration
  def change
   add_column :items, :category_cname, :integer
end
end
