class Apartment
  require "./tenant"
  require "./modules"
  extend CreditRating
  attr_reader :apartment_no, :rent, :sq_ft, :bedroom_count, :bathroom_count, :tenants
  def initialize(apartment_no, rent, sq_ft, bedroom_count, bathroom_count)
    @apartment_no = apartment_no
    @rent = rent
    @sq_ft = sq_ft
    @bedroom_count = bedroom_count
    @bathroom_count = bathroom_count
    @tenants = []
  end

  def add_tenant(tenant)
    @tenant = tenant
    # puts @tenant
    if @tenant.credit_rating(@tenant.credit_score) != 'Bad'
      @tenants.push tenant
    else
      'Bad Credit Rating Cannot Insert'
    end
  end

  def remove_tenant(name)
    if @tenants.each do |tenant_check|
      if tenant_check.name==name
        @tenants.delete_if { |tenants| tenants.name == name }
      else
        "Tenant is not exist"
      end
    end
  end
end
  def remove_all_tenants
    @tenants.delete_if { true }
  end

  def avg_credit
    avg_credit=0
    @tenants.each do | tenants|
       avg_credit += tenants.credit_score
     end
     avg_credit / @tenants.size
  end
end
