
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
  # require_relative ('./modules')
  include CreditRating
  attr_reader :name, :age, :credit_score
<<<<<<< HEAD
  @all = []
=======
  @all=[]
>>>>>>> dd0080d528ef4b5aa3925e22bde36093e25a18e6
  self.class.public_send(:attr_reader, :all)
  def initialize(name, age, credit_score)
    @name = name
    @age = age
    @credit_score = credit_score
    self.class.all << self
<<<<<<< HEAD
    puts 'Tenant inserted successfully New Tenant list'
=======
    puts "Tenant inserted successfully New Tenant list"
>>>>>>> dd0080d528ef4b5aa3925e22bde36093e25a18e6
    self.class.all.each do |data|
      puts "Name : #{data.name} \tAge : #{data.age} \tCredit_score : #{data.credit_score}"
    end
  end
end
class Apartment
<<<<<<< HEAD
  include CreditRating
  attr_reader :apartment_no, :rent, :sq_ft, :bedroom_count, :bathroom_count, :tenants
  @all = []
=======
  # require_relative ('./modules')
  include CreditRating
  attr_reader :apartment_no, :rent, :sq_ft, :bedroom_count, :bathroom_count, :tenants
  @all=[]
>>>>>>> dd0080d528ef4b5aa3925e22bde36093e25a18e6
  self.class.public_send(:attr_reader, :all)
  def initialize(apartment_no, rent, sq_ft, bedroom_count, bathroom_count)
    @apartment_no = apartment_no
    @rent = rent
    @sq_ft = sq_ft
    @bedroom_count = bedroom_count
    @bathroom_count = bathroom_count
    @tenants = []
    self.class.all << self
<<<<<<< HEAD
    puts 'Apartment inserted successfully New Apartment list'
    self.class.all.each do |data|
      puts "Apartment#{data.apartment_no} \tRent : #{data.rent} \tSquare Feet : #{data.sq_ft} \tBedrooms : #{data.bedroom_count} \tBathrooms : #{data.bathroom_count}"
    end
=======
    puts "Apartment inserted successfully New Apartment list"
    self.class.all.each do |data|
      puts "Apartment#{data.apartment_no} \tRent : #{data.rent} \tSquare Feet : #{data.sq_ft} \tBedrooms : #{data.bedroom_count} \tBathrooms : #{data.bathroom_count}"
    end

>>>>>>> dd0080d528ef4b5aa3925e22bde36093e25a18e6
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
<<<<<<< HEAD
    flag = 0
    if @tenants.each do |tenant_check|
      flag = if tenant_check.name == name
               1
             else
               0
             end
    end
      if flag == 1
        @tenants.delete_if { |tenants| tenants.name == name }
        puts "Tenant #{name} deleted successfully New tenant list of Apartment#{@apartment_no} is"
        @tenants.each do |data|
          puts "Name : #{data.name} \tAge : #{data.age} \tCredit_score : #{data.credit_score}"
        end
      else
        puts "Tenant #{name} does not exist"
      end
=======
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
>>>>>>> dd0080d528ef4b5aa3925e22bde36093e25a18e6
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
class Building
<<<<<<< HEAD
  @all = []
=======
  # require_relative './modules'
  @all=[]
>>>>>>> dd0080d528ef4b5aa3925e22bde36093e25a18e6
  attr_reader :address
  self.class.public_send(:attr_reader, :all)
  def initialize(address)
    @address = address
    @apartments = []
    self.class.all << self
<<<<<<< HEAD
    puts 'Building inserted successfully New Building list'
    self.class.all.each do |data|
      puts data.address.to_s
=======
    puts "Building inserted successfully New Building list"
    self.class.all.each do |data|
      puts "#{data.address}"
>>>>>>> dd0080d528ef4b5aa3925e22bde36093e25a18e6
    end
  end

  def add_apartment(apartment)
    @apartments.push apartment
    puts "Apartment#{apartment.apartment_no} successfully inserted to #{@address} new Apartment list is"
    @apartments.each do |data|
      puts "Apartment#{data.apartment_no} \tRent : #{data.rent} \tSquare Feet : #{data.sq_ft} \tBedrooms : #{data.bedroom_count} \tBathrooms : #{data.bathroom_count}"
    end
  end

  def remove_apartment(apartment_no)
<<<<<<< HEAD
    flag = 0
    if @apartments.each do |apartment_check|
      if apartment_check.apartment_no == apartment_no && apartment_check.tenants.empty?
        flag = 1
      else
        flag = 0
      end
=======
    flag=0
    if @apartments.each do |apartment_check|
      if apartment_check.apartment_no == apartment_no && apartment_check.tenants.empty?
        flag=1
      else
        flag=0
      end
    end
    if flag==1
      @apartments.delete_if { |apartments| apartments.apartment_no == apartment_no }
      puts "Apartment#{apartment_no} deleted successfully ne apartment list"
      @apartments.each do |data|
        puts "Apartment#{data.apartment_no} \tRent : #{data.rent} \tSquare Feet : #{data.sq_ft} \tBedrooms : #{data.bedroom_count} \tBathrooms : #{data.bathroom_count}"
      end
    else
      puts "Apartment#{apartment_no} is not empty or apartment number is invalid"
>>>>>>> dd0080d528ef4b5aa3925e22bde36093e25a18e6
    end
      if flag == 1
        @apartments.delete_if { |apartments| apartments.apartment_no == apartment_no }
        puts "Apartment#{apartment_no} deleted successfully ne apartment list"
        @apartments.each do |data|
          puts "Apartment#{data.apartment_no} \tRent : #{data.rent} \tSquare Feet : #{data.sq_ft} \tBedrooms : #{data.bedroom_count} \tBathrooms : #{data.bathroom_count}"
        end
      else
        puts "Apartment#{apartment_no} is not empty or apartment number is invalid"
      end
  end
end

  def total_sq_ft
    total_sq_ft = 0
    @apartments.each do |apartments|
      total_sq_ft += apartments.sq_ft
    end
    puts "total_sq_ft : #{total_sq_ft}"
  end

  def total_revenue
    total_revenue = 0
    @apartments.each do |apartments|
      total_revenue += apartments.rent.to_i * apartments.bedroom_count.to_i
    end
    puts "total_revenue #{total_revenue}"
  end

  def total_tenants
    name = []
    @apartments.each do |apartments|
      apartments.tenants.each do |tenants|
        name.push tenants.name
      end
    end
    puts name
  end
end
tenant1 = Tenant.new('Shrudhu', 21, 855)
tenant2 = Tenant.new('Shreyas', 22, 755)
tenant3 = Tenant.new('Snehith', 24, 815)
tenant4 = Tenant.new('Ferbin', 21, 655)
tenant5 = Tenant.new('Twinkle', 20, 555)
tenant6 = Tenant.new('Amal', 28, 455)
apartment1 = Apartment.new(1, 6500, 5000, 90, 60)
apartment2 = Apartment.new(2, 6000, 4800, 80, 50)
<<<<<<< HEAD
apartment3 = Apartment.new(3, 4000, 3000, 50, 20)
=======
apartment3=Apartment.new(3,4000,3000,50,20)
>>>>>>> dd0080d528ef4b5aa3925e22bde36093e25a18e6
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
building1.add_apartment(apartment3)
apartment1.remove_tenant(tenant6.name)
apartment1.remove_tenant(tenant2.name)
apartment1.remove_tenant(tenant1.name)
building1.remove_apartment(1)
building1.remove_apartment(3)
building1.total_tenants
