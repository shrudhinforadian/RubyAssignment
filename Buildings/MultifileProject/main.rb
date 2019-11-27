
require './tenant'
require './modules'
require './buildings'
require './apartment'
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
puts building2.remove_apartment(apartment2)
puts building1.remove_apartment(apartment1)
puts apartment1.remove_tenant('Amal')
puts apartment1.remove_tenant('Shrudhin')
puts building1.total_tenants
