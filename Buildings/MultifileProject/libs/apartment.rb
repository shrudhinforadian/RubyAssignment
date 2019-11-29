
class Apartment
  require_relative './modules'
  include CreditRating
  extend LoadFile
  extend ExportFile
  attr_reader :apartment_no, :rent, :sq_ft, :bedroom_count, :bathroom_count, :tenants
  @@all = []

  def initialize(apartment_no, rent, sq_ft, bedroom_count, bathroom_count)
    @apartment_no = apartment_no
    @rent = rent
    @sq_ft = sq_ft
    @bedroom_count = bedroom_count
    @bathroom_count = bathroom_count
    @tenants = []
    @@all << self
    puts "Apartment#{@apartment_no} inserted successfully New Apartment list"
  end

  def self.all
    @@all.each { |data| puts "Apartment#{data.apartment_no} \tRent : #{data.rent} \tSquare Feet : #{data.sq_ft} \tBedrooms : #{data.bedroom_count} \tBathrooms : #{data.bathroom_count}" }
  end

  def add_tenant(tenant)
    if tenant.credit_rating != 'Bad'
      tenants.push tenant
      puts "Tenant successfully inserted to Apartment No#{@apartment_no} new Tenant list is"
      print_all_tenants
    else
      puts "Bad Credit Rating Cannot Insert #{tenant.name}"
    end
  end

  def remove_tenant(name)
    tenants_old = @tenants.dup
    @tenants.delete_if { |tenant| tenant.name == name }
    if !tenants_old.eql? @tenants
      puts "Tenant #{name} deleted successfully New tenant list of Apartment#{@apartment_no} is"
      print_all_tenants
    else
      puts "Tenant #{name} does not exist"
    end
  end

  def remove_all_tenants
    @tenants.delete_if { true }
    puts "All tenants in the Apartment#{@apartment_no} are deleted"
  end

  def avg_credit
    avg_credit = 0
    @tenants.each { |tenant| avg_credit += tenant.credit_score }
    avg_credit / (@tenants.size.nonzero? || 1)
  end

  def print_all_tenants
    @tenants.each { |data| puts "Name : #{data.name} \tAge : #{data.age} \tCredit_score : #{data.credit_score}" }
  end

  def self.export
    apartment = { 'Apartments' => [] }
    @@all.each do |item|
      temp = {}
      temp['bedrooms'] = item.bedroom_count
      temp['bathrooms'] = item.bathroom_count
      temp['number'] = item.apartment_no
      apartment['Apartments'] << temp
    end
    Apartment.export_yaml(apartment)
  end
end
