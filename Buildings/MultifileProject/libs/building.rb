
class Building
  require_relative './modules'
  extend LoadFile
  extend ExportFile
  @@all = []
  attr_reader :address, :building_id
  def initialize(building_id, address)
    flag = 0
    @@all.each { |data|
      if data.building_id == building_id
        return puts 'error Cannot add  building data building id exist'
        break
      end
    }

    if flag != 1
      @@all << self
      @building_id = building_id
      @address = address
      @apartments = []
    end
  end

  def self.all
    @@all.each { |data| puts "#{data.address} #{data.building_id}" }
  end

  def add_apartment(apartment)
    if @building_id.nil?
      puts 'error invalid building'
    else
      @apartments.push apartment
      puts "Apartment#{apartment.apartment_no} successfully inserted to #{@address} new Apartment list is"
      print_all(@apartments)
    end
  end

  def remove_apartment(apartment_no)
    if @building_id.nil?
      puts 'error invalid building'
    else
      apartments_old = @apartments.dup
      @apartments.delete_if { |apartment| apartment.apartment_no == apartment_no && apartment.tenants.empty? }
      if apartments_old != @apartments
        puts "Apartment#{apartment_no} deleted successfully ne apartment list"
        print_all_apartments
      else
        puts "Apartment#{apartment_no} is not empty or apartment number is invalid"
      end
    end
end

  def total_sq_ft
    if @building_id.nil?
      puts 'error invalid building'
    else
      total_sq_ft = 0
      @apartments.each { |apartment| total_sq_ft += apartment.sq_ft }
      puts "total_sq_ft : #{total_sq_ft}"
    end
  end

  def total_revenue
    if @building_id.nil?
      puts 'error invalid building'
    else
      total_revenue = 0
      @apartments.each { |apartment| total_revenue += apartment.rent * apartment.bedroom_count }
      puts "total_revenue #{total_revenue}"
    end
  end

  def total_tenants
    if @building_id.nil?
      puts 'error invalid building'
    else
      name = []
      @apartments.each { |apartment| apartment.tenants.each { |tenant| name.push tenant.name } }
      puts name
    end
  end

  def print_all_apartments
    if @building_id.nil?
      puts 'error invalid building'
    else
      list.each { |data| puts "Apartment#{data.apartment_no} \tRent : #{data.rent} \tSquare Feet : #{data.sq_ft} \tBedrooms : #{data.bedroom_count} \tBathrooms : #{data.bathroom_count}" }
    end
  end


  def self.export
    building = { 'Buildings' => [] }
    @@all.each { |item|
      temp = {}
      temp['address'] = item.address
      building['Buildings'] << temp
    }

    Building.export_yaml(building)
   end
end
