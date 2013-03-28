class CreatePayables < ActiveRecord::Migration
  def change
    create_table :payables do |t|
      t.integer :Document_Number
      t.string :Type
      t.integer :DD
      t.integer :PBK
      t.integer :ClrngDoc
      t.string :Text
      t.string :DocDate
      t.string :NetDue
      t.float :Amount_Due
      t.string :Currency

      t.timestamps
    end
  end
end
