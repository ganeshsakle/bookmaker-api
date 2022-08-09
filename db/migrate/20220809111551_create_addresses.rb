class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.integer :pincode
      t.string :city

      t.timestamps
    end
  end
end
