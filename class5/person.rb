require 'date'

class Person
  #attribute names must be symbols
  attr_accessor :name, :gender, :dob, :no_of_dependents,
                :occupation, :annual_income
  # attr_accessor :street_address, :mailing_addresss
  attr_accessor :addressses

# ruby calls it automatically when new is called. Class constructor
  def initialize(name, gender, dob) #name, gender, dob are method variables
    @addresses = [] #@addresses, @name... are instance var
    @name = name
    @gender = gender
    @dob = dob
  end

# class method - class level scope e.g. Person.age_from_dobs
  # def self.age_from_dob

  def age_from_dob # object level access
    dob_dt = Date.parse(@dob) #object attributes have instance or object level scope
    today = DateTime.now
    (today.mjd - dob_dt.mjd) / 365
  end

   def calc_tier
    if @annual_income.nil? || @annual_income.to_i < 100000
      'Tier 1'
    elsif @annual_income.to_i >= 100000 && @annual_income.to_i < 200000
      'Tier2' 
    else
      'Tier3'
    end
  end
end