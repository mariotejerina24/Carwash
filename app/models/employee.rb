class Employee < ActiveRecord::Base
	has_many :washes

  def full_name
    first_name + " " + last_name
  end

end
