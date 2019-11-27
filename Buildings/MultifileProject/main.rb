
require_relative './libs/modules'
require_relative './libs/apartment'
require_relative './libs/buildings'
require_relative './libs/tenant'
tenant1 = Tenant.new('Shrudhu', 21, 855)
tenant2 = Tenant.new('Shreyas', 22, 755)
tenant3 = Tenant.new('Snehith', 24, 815)
tenant4 = Tenant.new('Ferbin', 21, 655)
tenant5 = Tenant.new('Twinkle', 20, 555)
tenant6 = Tenant.new('Amal', 28, 455)
apartment1 = Apartment.new(1, 6500, 5000, 90, 60)
apartment2 = Apartment.new(2, 6000, 4800, 80, 50)
apartment3 = Apartment.new(3, 4000, 3000, 50, 20)
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
building2.total_revenue
apartment1.avg_credit
building1.total_tenants
