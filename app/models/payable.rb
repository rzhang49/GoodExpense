class Payable < ActiveRecord::Base
  attr_accessible :Amount_Due, :ClrngDoc, :Currency, :DD, :DocDate, :Document_Number, :NetDue, :PBK, :Text, :Type
end
