require 'date'

class Person
  attr_accessor :name, :gender, :dob

    def initialize name, gender, dob
    @name = name
    @gender = gender
    @dob = dob
  end

  def age
    dob_dt = Date.parse(@dob)
    today = DateTime.now
    (today.mjd - dob_dt.mjd) / 365
  end

end