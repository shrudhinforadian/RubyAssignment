

class Building
  require_relative './modules'
  extend LoadFile
  extend ExportFile
  @all = []
  attr_reader :address,:building_id
  self.class.public_send(:attr_reader, :all)

  def initialize(building_id,address)

    flag=0
    self.class.all.each do |data|
      if data.building_id==building_id
        return puts "error Cannot add  building data building id exist"
        break
      end
    end
    if flag!=1
    self.class.all << self
    @building_id=building_id
    @address = address
    @apartments = []
    export
  end
  end

  def all
    if exist
      puts "error invalid building"
    else
      self.class.all.each do |data|
        puts "#{data.address.to_s} #{data.building_id}"
      end
    end
  end

  def add_apartment(apartment)
    if exist
      puts "error invalid building"
    else
      @apartments.push apartment
      puts "Apartment#{apartment.apartment_no} successfully inserted to #{@address} new Apartment list is"
      print_all(@apartments)

    end
  end

  def remove_apartment(apartment_no)
    if exist
      puts "error invalid building"
    else
      apartments_old = @apartments.to_s
      @apartments.delete_if { |apartment| apartment.apartment_no == apartment_no && apartment.tenants.empty? }
      if apartments_old != @apartments.to_s
        puts "Apartment#{apartment_no} deleted successfully ne apartment list"
        print_all(@apartments)
      else
        puts "Apartment#{apartment_no} is not empty or apartment number is invalid"
      end
    end
end

  def total_sq_ft
    if exist
      puts "error invalid building"
    else
      total_sq_ft = 0
      @apartments.each do |apartment|
        total_sq_ft += apartment.sq_ft
      end
      puts "total_sq_ft : #{total_sq_ft}"
    end
  end

  def total_revenue
    if exist
      puts "error invalid building"
    else
      total_revenue = 0
      @apartments.each do |apartment|
        total_revenue += apartment.rent * apartment.bedroom_count
      end
      puts "total_revenue #{total_revenue}"
    end
  end

  def total_tenants
    if exist
      puts "error invalid building"
    else
      name = []
      @apartments.each do |apartment|
        apartment.tenants.each do |tenant|
          name.push tenant.name
        end
      end
      puts name
    end
  end

  def print_all(list)
    if exist
      puts "error invalid building"
    else
      list.each do |data|
        puts "Apartment#{data.apartment_no} \tRent : #{data.rent} \tSquare Feet : #{data.sq_ft} \tBedrooms : #{data.bedroom_count} \tBathrooms : #{data.bathroom_count}"
      end
    end
  end

  def exist
     @building_id.nil?
   end
   def export
     building = { "Buildings" => [] }
     self.class.all.each do |item|

       temp = {}
       temp["address"] = item.address
       building["Buildings"] << temp
     end

     Building.export_yaml(building)

   end
end
