def fib(n)
  if n==0
    return 0
  elsif n==1
    return 1
  else
    return fib(n-1) + fib(n-2)
  end
end
n=0
sum=0
fi=0
i=0
while (i<1)
    fi=fib(n)
    puts "#{n} th term is #{fi}"
    if( fi.to_s.size==1000)
      puts "#{n} th term is #{fi} have size 1000"
      i=2
    end
    n+=1
  end
