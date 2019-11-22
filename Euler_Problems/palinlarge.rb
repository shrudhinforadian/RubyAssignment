def checkpalin(palin)
  if palin.to_s==palin.to_s.reverse
    return 1
  else
    return 0
  end
end
num1=100
num2=100
p=0
for num1 in 100..999
  for num2 in 100..999
    palin= num1 * num2
    result=checkpalin(palin)
    if result==1
      if p<palin
        p=palin
        n=num1
        a=num2
      end
    end
  end
end
puts "#{p}\n#{n}\n#{a}"
