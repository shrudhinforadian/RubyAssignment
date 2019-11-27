class Building
  require_relative './modules'
  @all=[]
  attr_reader :address
  self.class.public_send(:attr_reader, :all)
  def initialize(address)
    @address = address
    @apartments = []
    self.class.all << self
    puts "Building inserted successfully New Building list"
    self.class.all.each do |data|
      puts "#{data.address}"
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
