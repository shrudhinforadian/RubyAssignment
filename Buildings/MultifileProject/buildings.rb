class Building
  require "./tenant"
  require "./modules"
  def initialize(address)
    @address = address
    @apartments = []
  end

  def add_apartment(apartment)
    @apartments.push apartment
  end

  def remove_apartment(apartment)
    if !(apartment.tenants.empty?) && (@apartments.include? apartment.apartment_no)
       @apartments.delete_if { |apartments| apartments.apartment_no == apartment.apartment_no }
    else
      "Apartment is not empty or apartment number is invalid"
    end
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
