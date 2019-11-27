
class Apartment
  require_relative ('./modules')
  include CreditRating
  attr_reader :apartment_no, :rent, :sq_ft, :bedroom_count, :bathroom_count, :tenants
  @all=[]
  self.class.public_send(:attr_reader, :all)
  def initialize(apartment_no, rent, sq_ft, bedroom_count, bathroom_count)
    @apartment_no = apartment_no
    @rent = rent
    @sq_ft = sq_ft
    @bedroom_count = bedroom_count
    @bathroom_count = bathroom_count
    @tenants = []
    self.class.all << self
    puts "Apartment inserted successfully New Apartment list"
    self.class.all.each do |data|
      puts "Apartment#{data.apartment_no} \tRent : #{data.rent} \tSquare Feet : #{data.sq_ft} \tBedrooms : #{data.bedroom_count} \tBathrooms : #{data.bathroom_count}"
    end

  end

  def add_tenant(tenant)
    @tenant = tenant
    if @tenant.credit_rating(@tenant.credit_score) != 'Bad'
      @tenants.push tenant
      puts "Tenant successfully inserted to Apartment No#{@apartment_no} new Tenant list is"
      @tenants.each do |data|
        puts "Name : #{data.name} \tAge : #{data.age} \tCredit_score : #{data.credit_score}"
      end
    else
      puts "Bad Credit Rating Cannot Insert #{@tenant.name}"
    end
  end

  def remove_tenant(name)
    flag=0
    if @tenants.each do |tenant_check|
      if tenant_check.name == name
        flag=1
      else
        flag=0
      end
    end
      if flag==1
        @tenants.delete_if { |tenants| tenants.name == name }
        puts "Tenant #{name} deleted successfully New tenant list of Apartment#{@apartment_no} is"
        @tenants.each do |data|
          puts "Name : #{data.name} \tAge : #{data.age} \tCredit_score : #{data.credit_score}"
        end
      else
        puts "Tenant #{name} does not exist"
      end
  end
end

  def remove_all_tenants
    @tenants.delete_if { true }
    puts "All tenants in the Apartment#{@apartment_no} are deleted"
  end

  def avg_credit
    avg_credit = 0
    @tenants.each do |tenants|
      avg_credit += tenants.credit_score
    end
    avg_credit / (@tenants.size.nonzero? || 1)
  end
end
