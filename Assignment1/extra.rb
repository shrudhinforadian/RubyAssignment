# frozen_string_literal: true

attr_reader :name

attr_reader :age

attr_reader :credit_score

attr_reader :credit_rating

def avg_credit
  @avg_credit = 0
  @tenants.each do |tenant|
    @avg_credit += tenant.credit_score
  end
end
