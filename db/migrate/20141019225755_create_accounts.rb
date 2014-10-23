class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :email

    end
  end
end
