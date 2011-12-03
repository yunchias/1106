class Changecolumntype < ActiveRecord::Migration
  def self.up
    change_column :items, :category_cname, :string
   end

   def self.down
    change_column :items, :category_cname, :integer
   end

end
