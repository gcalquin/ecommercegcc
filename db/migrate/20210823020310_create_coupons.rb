class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |t|
      t.string :type
      t.string :code
      t.integer :amount
      t.string :type2
      t.references :user, foreign_key: true
      t.integer :count

      t.timestamps
    end
  end
end
