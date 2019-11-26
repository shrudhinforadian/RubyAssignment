 class Tenant
  def initialize(name, age, credit_score)
    @name = name
    @age = age
    @credit_score = credit_score
  end

  def credit_rating(credit_score)
    @credit_score = credit_score
    @credit_rating = case @credit_score
                     when 760..1000
                       'Excellent'
                     when 725..759
                       'Great'
                     when 660..724
                       'Good'
                     when 560..659
                       'Mediocre'
                     else
                       'Bad'
                     end
  end
end
class Apartment
  include Tenant
  def initialize(apartment_no, rent, sq_ft, bedroom_count, bathroom_count)
    @apartment_no = apartment_no
    @rent = rent
    @sq_ft = sq_ft
    @bedroom_count = bedroom_count
    @bathroom_count = bathroom_count
    @tenants = []
  end

  def add_tenant(tenant)
    if tenant.credit_rating != 'Bad'
      @tenants.push tenant
    else
      'Bad Credit Rating Cannot Insert'
    end
  end

  def remove_tenant(tenant)
    @tenants.delete_if { |tenants| tenants.name == tenant.name }
  end

  def remove_all_tenants
    @tenants.delete_if { true }
  end

  def avg_credit
    @tenants.inject { |avg_credit,tenants| avg_credit+tenants.credit_score }
    avg_credit/=@tenants.size
  end
end
class Building
  include Apartment
  def initialize(address)
    @address = address
    @apartments = []
  end

  def add_apartment(apartment)
    @apartments.push apartment
  end

  def remove_apartment(apartment)
    @apartments.delete_if { |apartments| apartments.apartment_no == apartment.apartment_no }
  end
end
