class CreateExpenseReports < ActiveRecord::Migration
  def change
    create_table :expense_reports do |t|
      t.string :Employee_Name
      t.string :Division
      t.string :Department
      t.string :From
      t.string :To
      t.string :Business_Purpose
      t.string :Date
      t.float :Amount
      t.float :Airfare
      t.float :TaxiTransportation
      t.float :TollsParking
      t.float :Car_Rental
      t.float :Gas
      t.float :Hotel
      t.float :Other
      t.float :Breakfast
      t.float :Lunch
      t.float :Dinner
      t.float :Business_Meals
      t.float :Entertainment
      t.float :Cell_Phone
      t.float :Office_Phone
      t.float :Postage
      t.float :Office_Supplies
      t.float :Competitor_Products
      t.string :Date
      t.string :NameFirmPosition
      t.string :Purpose

      t.timestamps
    end
  end
end
