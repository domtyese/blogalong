class CreateMakingroceries < ActiveRecord::Migration
  def change
    create_table :makingroceries do |t|
      t.string :item
      t.text :quantity
      t.text :coupon
      t.boolean :done

      t.timestamps null: false
    end
  end
end
