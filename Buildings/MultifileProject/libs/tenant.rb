
class Tenant

  require_relative './modules'
  include CreditRating
  extend LoadFile
  extend ExportFile
  attr_reader :name, :age, :credit_score
  @all = []
  self.class.public_send(:attr_reader, :all)

  def initialize(name, age, credit_score)
    @name = name
    @age = age

    @credit_score = credit_score
    self.class.all << self
    export
    puts "Tenant #{name} inserted successfully New Tenant list"

  end

  def all
    self.class.all.each do |data|
      puts "Name : #{data.name} \tAge : #{data.age} \tCredit_score : #{data.credit_score}"
    end
  end
  def export
    tenant = { "Tenants" => [] }
    self.class.all.each do |item|

      temp = {}
      temp["credit_score"] = item.credit_score
      temp["name"]=item.name
      tenant["Tenants"] << temp
    end
    Tenant.export_yaml(tenant)

  end
end
