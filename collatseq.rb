def seq(n)
  count=0
  while(n>=1)
    if(n.even?)
      n=n/2
      count+=1
    elsif(n==1)
      break
    else
      n=n*3+1
      count+=1
    end
  end
  return count
end
start=1
e=1000000
sizechain = 1
largechain = 1
l=1
while ( start<e )
  sizechain=seq(start)

  if largechain<sizechain
    largechain=sizechain
    l=start
  end
  start+=1
end
puts "#{largechain}   #{l}"
