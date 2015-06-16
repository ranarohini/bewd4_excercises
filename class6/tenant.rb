
require './person'

class Tenant < Person #inheritance
  #not necessary if only initializing #exposition
  attr_accessor :no_of_dependents, :occupation, :annual_income

  def income_tier
    if @annual_income.nil? || @annual_income.to_i < 100000
      'Tier 1'
    elsif @annual_income.to_i >= 100000 && @annual_income.to_i < 200000
      'Tier2' 
    else
      'Tier3'
    end
  end

end