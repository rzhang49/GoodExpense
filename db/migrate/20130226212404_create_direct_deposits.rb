class CreateDirectDeposits < ActiveRecord::Migration
  def change
    create_table :direct_deposits do |t|
      t.string :Name
      t.integer :Bank_Account_Number
      t.integer :Routing_Number

      t.timestamps
    end
  end
end
