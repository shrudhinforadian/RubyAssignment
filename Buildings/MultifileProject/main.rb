
require_relative ('./libs/modules')
require_relative ('./libs/apartment')
require_relative ('./libs/buildings')
require_relative ('./libs/tenant')

# p "tenant1 = Tenant.new('Shrudhin', 21, 855)"
tenant1 = Tenant.new('Shrudhu', 21, 855)

# p "tenant2 = Tenant.new('Shreyas', 22, 755)"
tenant2 = Tenant.new('Shreyas', 22, 755)

# p "tenant3 = Tenant.new('Snehith', 24, 815)"
tenant3 = Tenant.new('Snehith', 24, 815)

# p "tenant4 = Tenant.new('Ferbin', 21, 655)"
tenant4 = Tenant.new('Ferbin', 21, 655)

# p "tenant5 = Tenant.new('Twinkle', 20, 555)"
tenant5 = Tenant.new('Twinkle', 20, 555)

# p "tenant6 = Tenant.new('Amal', 28, 455)"
tenant6 = Tenant.new('Amal', 28, 455)

# p "apartment1 = Apartment.new(1, 6500, 5000, 90, 60)"
apartment1 = Apartment.new(1, 6500, 5000, 90, 60)

# p "apartment2 = Apartment.new(2, 6000, 4800, 80, 50)"
apartment2 = Apartment.new(2, 6000, 4800, 80, 50)

apartment3=Apartment.new(3,4000,3000,50,20)
# p "apartment1.add_tenant(tenant1)"
apartment1.add_tenant(tenant1)

# p "apartment1.add_tenant(tenant2)"
apartment1.add_tenant(tenant2)

# p "apartment1.add_tenant(tenant6)"
apartment1.add_tenant(tenant6)

# p "apartment2.add_tenant(tenant3)"
apartment2.add_tenant(tenant3)

# p "apartment2.add_tenant(tenant4)"
apartment2.add_tenant(tenant4)

# p "apartment2.add_tenant(tenant5)"
apartment2.add_tenant(tenant5)

# p "building1 = Building.new('Madiwala')"
building1 = Building.new('Madiwala')
#
# p "building2 = Building.new('BTM')"
building2 = Building.new('BTM')
#
# p "building1.add_apartment(apartment1)"
building1.add_apartment(apartment1)
#
# p "building2.add_apartment(apartment1)"
building2.add_apartment(apartment1)
#
# p "building1.add_apartment(apartment2)"
building1.add_apartment(apartment2)
building1.add_apartment(apartment3)
# p "apartment1.remove_tenant(tenant6.name)"
apartment1.remove_tenant(tenant6.name)
#
# p "apartment1.remove_tenant(tenant2.name)"
apartment1.remove_tenant(tenant2.name)
#
# p "apartment1.remove_tenant(tenant1.name)"
apartment1.remove_tenant(tenant1.name)
# #
building1.remove_apartment(1)
building1.remove_apartment(3)
# puts building1.total_tenants
# puts building2.total_revenue
# puts apartment1.avg_credit
# puts building2.remove_apartment(apartment2)
# puts building1.remove_apartment(apartment1)
# puts apartment1.remove_tenant('Amal')
# puts apartment1.remove_tenant('Shrudhin')
 building1.total_tenants
