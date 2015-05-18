class Vehicle < ActiveRecord::Base
	has_many :washes

  def full_nameauto
    brand + " " + model + " (" + patent + ")"
  end
end
