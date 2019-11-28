

class Building
  require_relative './modules'
  @all = []
  attr_reader :address
  self.class.public_send(:attr_reader, :all)

  def initialize(address)
    @address = address
    @apartments = []
    self.class.all << self
  end

  def all
    self.class.all.each do |data|
      puts data.address.to_s
    end
  end

  def add_apartment(apartment)
    @apartments.push apartment
    puts "Apartment#{apartment.apartment_no} successfully inserted to #{@address} new Apartment list is"
    print_all(@apartments)
  end

  def remove_apartment(apartment_no)
    apartments_old = @apartments.to_s
    @apartments.delete_if { |apartment| apartment.apartment_no == apartment_no }
    if apartments_old == @apartments.to_s
      puts "Apartment#{apartment_no} deleted successfully ne apartment list"
      print_all(@apartments)
    else
      puts "Apartment#{apartment_no} is not empty or apartment number is invalid"
    end
end

  def total_sq_ft
    total_sq_ft = 0
    @apartments.each do |apartment|
      total_sq_ft += apartment.sq_ft
    end
    puts "total_sq_ft : #{total_sq_ft}"
  end

  def total_revenue
    total_revenue = 0
    @apartments.each do |apartment|
      total_revenue += apartment.rent * apartment.bedroom_count
    end
    puts "total_revenue #{total_revenue}"
  end

  def total_tenants
    name = []
    @apartments.each do |apartment|
      apartment.tenants.each do |tenant|
        name.push tenant.name
      end
    end
    puts name
  end

  def print_all(list)
    list.each do |data|
      puts "Apartment#{data.apartment_no} \tRent : #{data.rent} \tSquare Feet : #{data.sq_ft} \tBedrooms : #{data.bedroom_count} \tBathrooms : #{data.bathroom_count}"
    end
  end
end
