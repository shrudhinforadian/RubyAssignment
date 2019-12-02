
class Building
  require_relative './modules'
  extend FileOperations
  @@all = []
  attr_reader :address, :building_id, :apartments
  def initialize(building_id, address)
    if !@@all.find { |data| data.building_id == building_id }.nil?
      puts 'error Cannot add  building data building id exist'
    else
      @@all << self
      @building_id = building_id
      @address = address
      @apartments = []
    end
  end

  # throw :NoMethodError if @building_id
  # catch :NoMethodError do
  #
  # puts @building_id
  # puts "hi"
  # end
  def add_apartment(apartment)
    @apartments.push apartment
    puts "Apartment#{apartment.apartment_no} successfully inserted to #{@address} new Apartment list is"
    print_all_apartments
    rescue NoMethodError
    puts 'Invalid Building Credential'
    # end
  end

  def remove_apartment(apartment_no)
    apartments_old = @apartments.dup
    @apartments.delete_if { |apartment| apartment.apartment_no == apartment_no && apartment.tenants.empty? }
    if apartments_old != @apartments
      puts "Apartment#{apartment_no} deleted successfully ne apartment list"
      print_all_apartments
    else
      puts "Apartment#{apartment_no} is not empty or apartment number is invalid"
    end
    rescue NoMethodError
    puts 'Invalid Building Credential'
      # end
    end

  def total_sq_ft
    total_sq_ft = 0
    @apartments.each { |apartment| total_sq_ft += apartment.sq_ft }
    puts "total_sq_ft : #{total_sq_ft}"
    rescue NoMethodError
    puts 'Invalid Building Credential'
    #   end
  end

  def total_revenue
    total_revenue = 0
    @apartments.each { |apartment| total_revenue += apartment.rent * apartment.bedroom_count }
    puts "total_revenue #{total_revenue}"
    rescue NoMethodError
    puts 'Invalid Building Credential'
    #   end
  end

  def print_all_tenants
    name = []
    @apartments.each { |apartment| apartment.tenants.each { |tenant| name.push tenant.name } }
    puts name
    rescue NoMethodError
    puts 'Invalid Building Credential'
  end

  def print_all_apartments
    # if @building_id.nil?
    #   puts 'error invalid building'
    # else
    @apartments.each { |data| puts "Apartment#{data.apartment_no} \tRent : #{data.rent} \tSquare Feet : #{data.sq_ft} \tBedrooms : #{data.bedroom_count} \tBathrooms : #{data.bathroom_count}" }
    # end
    rescue NoMethodError
    puts 'Invalid Building Credential'
  end

  class<<self
    def all
      @@all.each { |data| puts "#{data.address} #{data.building_id}" }
    end

    def export
      building = { 'Buildings' => [] }
      @@all.each do |item|
        temp = {}
        temp['building_id'] = item.building_id
        temp['address'] = item.address
        building['Buildings'] << temp
      end

      Building.export_yaml(building)
     end
end
end
