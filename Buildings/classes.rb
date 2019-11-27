
module CreditRating
  def credit_rating(credit_score)
    @credit_score = credit_score
    case @credit_score
    when 760..1000
      'Excellent'
    when 725..759
      'Great'
    when 660..724
      'Good'
    when 560..659
      'Mediocre'
    else
      'Bad'
    end
  end
end

class Tenant
  include CreditRating
  attr_reader :name, :age, :credit_score
  def initialize(name, age, credit_score)
    @name = name
    @age = age
    @credit_score = credit_score
  end
end

class Apartment
  extend CreditRating
  attr_reader :apartment_no, :rent, :sq_ft, :bedroom_count, :bathroom_count, :tenants, :total_revenue
  def initialize(apartment_no, rent, sq_ft, bedroom_count, bathroom_count)
    @apartment_no = apartment_no
    @rent = rent
    @sq_ft = sq_ft
    @bedroom_count = bedroom_count
    @bathroom_count = bathroom_count
    @tenants = []
  end

  def add_tenant(tenant)
    @tenant = tenant
    # puts @tenant
    if @tenant.credit_rating(@tenant.credit_score) != 'Bad'
      @tenants.push tenant
    else
      'Bad Credit Rating Cannot Insert'
    end
  end

  def remove_tenant(tenant)
    @tenants.delete_if { |tenants| tenants.name == tenant.name }
  end

  def remove_all_tenants
    @tenants.delete_if { true }
  end

  def avg_credit
    avg_credit=0
    @tenants.each do | tenants|
       avg_credit += tenants.credit_score
     end
     avg_credit / @tenants.size
  end
end

class Building
  def initialize(address)
    @address = address
    @apartments = []
  end

  def add_apartment(apartment)
    @apartments.push apartment
  end

  def remove_apartment(apartment)
    @apartments.delete_if { |apartments| apartments.apartment_no == apartment.apartment_no }
  end

  def total_sq_ft
    total_sq_ft=0
    @apartments.each do |apartments|
      total_sq_ft += apartments.sq_ft
    end
    total_sq_ft
  end

  def total_revenue
    total_revenue = 0
    @apartments.each do |apartments|
      total_revenue += apartments.rent.to_i * apartments.bedroom_count.to_i
    end
    total_revenue
  end

  def total_tenants
    name = []
    @apartments.each do |apartments|
      apartments.tenants.each do |tenants|
        name.push tenants.name
      end
    end
    name
  end
end
tenant1 = Tenant.new('Shrudhin', 21, 855)
tenant2 = Tenant.new('Shreyas', 22, 755)
tenant3 = Tenant.new('Snehith', 24, 815)
tenant4 = Tenant.new('Ferbin', 21, 655)
tenant5 = Tenant.new('Twinkle', 20, 555)
tenant6 = Tenant.new('Amal', 28, 455)
apartment1 = Apartment.new(1, 6500, 5000, 90, 60)
apartment2 = Apartment.new(2, 6000, 4800, 80, 50)
apartment1.add_tenant(tenant1)
apartment1.add_tenant(tenant2)
apartment1.add_tenant(tenant6)
apartment2.add_tenant(tenant3)
apartment2.add_tenant(tenant4)
apartment2.add_tenant(tenant5)
building1 = Building.new('Madiwala')
building2 = Building.new('BTM')
building1.add_apartment(apartment1)
building2.add_apartment(apartment1)
building1.add_apartment(apartment2)
puts building1.total_tenants
puts building2.total_revenue
puts apartment1.avg_credit
