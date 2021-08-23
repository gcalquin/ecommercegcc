class Product < ApplicationRecord
  has_and_belongs_to_many :categories

  has_many :variants

  #has_many :order_items
  #has_many :orders, through: :order_items

def mostrar_en_catalogo?
   self.variants.each do |variant|
    if variant.stock > 0
      return true
    else
      return false
    end
   end
end

end
