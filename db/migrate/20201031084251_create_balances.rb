class CreateBalances < ActiveRecord::Migration[5.2]
  def change
    create_table :balances do |t|
      t.integer :amount, limit: 4
      t.date    :month
      t.timestamps
    end
  end
end
