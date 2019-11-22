class Integer
  def factors() (1..self).select { |n| (self % n).zero? } end
end
start=1
en=10**12
count=0
for i in start..en
  if(i.factors.size==8)
    count+=1
  end
end
puts count
#119,501,179,551,655,216
