class Category < ApplicationRecord
  has_and_belongs_to_many :products

  belongs_to :parent, class_name: "Category", optional :true, foreign_key: :category_id
  has_many :children, class_name: "Category", dependent: :destroy

 scope :all_parents, => {where(category_id:nil)}

 def all_childrens
    self.children.flat_map do |c|
      c.all_childrens << c
    end
 end

end
