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
for n in 0..400000
    fi=fib(n)
    if fi.even?
      puts sum
      sum+=fi
    end
    n+=1
  end
  puts sum
