
class Euler
  def problem1
    i = 0
    result = []
    while i< 1000
      result << i if (i % 3==0 || i%5 == 0)
      i += 1
    end
    result.inject {|sum,x| sum + x}
  end
  
  def problem2
    #4,000,000
    fib_series = [0,1]
    even_terms = []
    while fib_series.last < 4000000
      fib_series << fib_series.last + fib_series[fib_series.size-2]
    end
    fib_series.pop
    fib_series.each {|x| even_terms << x if x%2==0}
    even_terms.inject {|sum,x| sum + x}
  end
  
end