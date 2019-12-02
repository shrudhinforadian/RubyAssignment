
class Tenant
  require_relative './modules'
  include CreditRating
  extend FileOperations
  attr_reader :name, :age, :credit_score, :all

  @@all = []

  def initialize(name, age, credit_score)
    @name = name
    @age = age
    @credit_score = credit_score
    puts "Tenant #{name} inserted successfully New Tenant list"
    @@all.push self
  end

  class<<self
    def all
      @@all.each { |data| puts "Name : #{data.name} \tAge : #{data.age} \tCredit_score : #{data.credit_score}" }
      end

    def export
      tenant = { 'Tenants' => [] }
      @@all.each { |item|
        temp = {}
        temp['credit_score'] = item.credit_score
        temp['name'] = item.name
        temp['age']=item.age
        temp['rating']=item.credit_rating
        tenant['Tenants'] << temp
      }
      Tenant.export_yaml(tenant)
    end
  end
end
