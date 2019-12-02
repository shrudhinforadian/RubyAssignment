
require_relative './libs/modules'
require_relative './libs/apartment'
require_relative './libs/building'
require_relative './libs/tenant'
# extend LoadFile
# tenant1 = Tenant.new('Shrudhu', 21, 855)
# tenant2 = Tenant.new('Shreyas', 22, 755)
# tenant3 = Tenant.new('Snehith', 24, 815)
# tenant4 = Tenant.new('Ferbin', 21, 655)
# tenant5 = Tenant.new('Twinkle', 20, 555)
# tenant6 = Tenant.new('Amal', 28, 455)
#  tenant5.all
# apartment1 = Apartment.new(1, 6500, 5000, 90, 60)
# apartment2 = Apartment.new(2, 6000, 4800, 80, 50)
# apartment3 = Apartment.new(3, 4000, 3000, 50, 20)
# apartment1.add_tenant(tenant1)
# apartment1.add_tenant(tenant2)
# apartment1.add_tenant(tenant6)
# apartment2.add_tenant(tenant3)
# apartment2.add_tenant(tenant4)
# apartment2.add_tenant(tenant5)
# building1 = Building.new(1,'Madiwala')
# building2 = Building.new(2, 'BTM')
# building3 = Building.new(2, 'BTM')
# building3.all
# building3.add_apartment(apartment1)
# building1.all
# building2.add_apartment(apartment1)
# building1.add_apartment(apartment2)
# building1.add_apartment(apartment3)
# apartment1.remove_tenant(tenant6.name)
# apartment1.remove_tenant(tenant2.name)
# building1.remove_apartment(1)
# building1.remove_apartment(3)
# building2.total_revenue
# apartment1.avg_credit
# building1.total_tenants

buildings = []
p load_buildings = Building.load_yaml('buildings')
load_buildings.each do |item|
  id = item['building_id']
  address = item['address']
  buildings.push Building.new(id, address)
end
apartments = []
p load_apartments = Apartment.load_yaml('apartments')
load_apartments.each do |item|
  apartment_no = item['apartment_no']
  rent = item['rent']
  sq_ft = item['sq_ft']
  bedroom_count = item['bedroom_count']
  bathroom_count = item['bathroom_count']
  apartments.push Apartment.new(apartment_no, rent, sq_ft, bedroom_count, bathroom_count)
end
tenants = []
p load_tenants = Tenant.load_yaml('tenants')
load_tenants.each do |item|
  name = item['name']
  age = item['age']
  credit_score = item['credit_score']
  tenants.push Tenant.new(name, age, credit_score)
end
# apartment[0].add_tenant(tenant[0])
#
# p apartment[0].print_all_tenants

apartments[0].add_tenant(tenants[0])
apartments[0].add_tenant(tenants[1])

apartments[1].add_tenant(tenants[1])
apartments[2].add_tenant(tenants[2])
buildings[0].add_apartment(apartments[0])
buildings[1].add_apartment(apartments[1])
buildings[2].add_apartment(apartments[2])
Tenant.export
Building.export
Apartment.export

# p apartment

# {reise errors
# remove @
# input output change}
buildings[3].add_apartment(apartments[0])
buildings[3].print_all_load_apartments
buildings[3].remove_apartment(apartments[0])
apartments[0].remove_tenant(tenants[1].name)
apartments[0].remove_tenant(tenants[1].name)
