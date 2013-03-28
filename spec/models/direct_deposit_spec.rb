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

require 'spec_helper'

describe DirectDeposit do
  pending "add some examples to (or delete) #{__FILE__}"
end
