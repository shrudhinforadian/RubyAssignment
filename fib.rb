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
for n in 0..4000000
    fi=fib(n)
    if fi.even?
      sum+=fi
    end
  end
  puts sum
