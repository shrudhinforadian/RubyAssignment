class Tenant
  require './modules'
  include CreditRating
  attr_reader :name, :age, :credit_score
  def initialize(name, age, credit_score)
    @name = name
    @age = age
    @credit_score = credit_score
  end
end
