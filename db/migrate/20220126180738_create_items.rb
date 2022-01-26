class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :category
      t.string :size 
      t.string :gender_specific
      t.string :price
      t.string :quantity
      t.string :availability
      t.references :vendor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
