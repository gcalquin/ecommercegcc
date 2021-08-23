require 'rails_helper'

RSpec.describe Category, type: :model do

it "Categoria valida sin un padre?" do
  category = Category.create(name: "Alguna Categoria")
  expect(category).to be_valid  
end

it "Padre elimina hijos?" do
  categoria_padre = Category.create(name: "Alguna Categoria")
  categoria_hijo = Category.create(name: "Alguna Categoria hijo", parent: categoria_padre)

  categoria_padre.destroy

  assert_nil Category.find_by_id(categoria_hijo.id)
end


end
