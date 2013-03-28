# == Schema Information
#
# Table name: payrolls
#
#  id            :integer          not null, primary key
#  Employee_Name :string(255)
#  Date          :string(255)
#  Job_Title     :string(255)
#  Date_Begin    :string(255)
#  Date_End      :string(255)
#  Hours         :integer
#  Comments      :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'spec_helper'

describe Payroll do
  pending "add some examples to (or delete) #{__FILE__}"
end
