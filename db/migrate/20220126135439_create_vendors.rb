class CreateVendors < ActiveRecord::Migration[6.1]
  def change
    create_table :vendors do |t|
      t.string :vendorname
      t.string :gst_no 
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
