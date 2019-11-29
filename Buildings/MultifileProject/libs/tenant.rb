
class Tenant
  require_relative './modules'
  include CreditRating
  extend LoadFile
  extend ExportFile
  attr_reader :name, :age, :credit_score, :all
  @@all = []
  def initialize(name, age, credit_score)
    @name = name
    @age = age
    @credit_score = credit_score
    puts "Tenant #{name} inserted successfully New Tenant list"
    @@all.push self
 end

  def self.all
    @@all.each { |data| puts "Name : #{data.name} \tAge : #{data.age} \tCredit_score : #{data.credit_score}" }
  end

  def self.export
    tenant = { 'Tenants' => [] }
    @@all.each do |item|
      temp = {}
      temp['credit_score'] = item.credit_score
      temp['name'] = item.name
      tenant['Tenants'] << temp
    end
    Tenant.export_yaml(tenant)
  end
end
