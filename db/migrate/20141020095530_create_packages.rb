class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.integer :cost
      t.string :currency_type
      t.integer :award_size

      t.timestamps
    end
  end
end
