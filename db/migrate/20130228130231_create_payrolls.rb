class CreatePayrolls < ActiveRecord::Migration
  def change
    create_table :payrolls do |t|
      t.string :Employee_Name
      t.string :Date
      t.string :Job_Title
      t.string :Date_Begin
      t.string :Date_End
      t.integer :Hours
      t.string :Comments

      t.timestamps
    end
  end
end
