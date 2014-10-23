class CreatePaymentProfiles < ActiveRecord::Migration
  def change
    create_table :payment_profiles do |t|
      t.integer :account_id
      t.integer :last_four
      t.string :card_type
      t.integer :exp_month
      t.integer :exp_year
      t.boolean :is_default

      t.timestamps
    end
  end
end
