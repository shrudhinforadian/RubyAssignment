def div(num)
  i=1
  flag=1
  for i in 1..20
    if num%i !=0
      flag=0
      break
    end
  end
  return flag
end
num=2520
while (div(num)!=1)
  num=num+10
end
puts num
