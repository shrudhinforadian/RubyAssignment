
class Tenant
  require_relative './modules'
  include CreditRating
  attr_reader :name, :age, :credit_score
  @all = []
  self.class.public_send(:attr_reader, :all)

  def initialize(name, age, credit_score)
    @name = name
    @age = age
    @credit_score = credit_score
    self.class.all << self
    puts "Tenant #{name} inserted successfully New Tenant list"
  end

  def all
    self.class.all.each do |data|
      puts "Name : #{data.name} \tAge : #{data.age} \tCredit_score : #{data.credit_score}"
    end
  end
end
