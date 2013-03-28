# == Schema Information
#
# Table name: direct_deposits
#
#  id                  :integer          not null, primary key
#  Name                :string(255)
#  Bank_Account_Number :integer
#  Routing_Number      :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class DirectDeposit < ActiveRecord::Base
  attr_accessible :Bank_Account_Number, :Name, :Routing_Number
end
