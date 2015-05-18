class Wash < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :employee
  belongs_to :customer
end
