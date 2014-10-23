class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.integer :payment_profile_id
      t.integer :package_id
      t.string :currency_type
      t.integer :amount
      t.datetime :created_at
      t.datetime :refunded_at

      t.timestamps
    end
  end
end
