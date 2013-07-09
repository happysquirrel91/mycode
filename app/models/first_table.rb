require 'active_record'

class FirstTable < ActiveRecord::Base
  attr_accessible :date, :id, :name, :occupation
end
