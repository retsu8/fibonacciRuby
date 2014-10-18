include Math
def fibonacci( n )
    return  n  if n <= 2 
    fibonacci( n - 1 ) + fibonacci( n - 2 )
end 
class Main
puts "Please enter the nth number for the Fibanachi Sequence"
n = gets.chomp 
puts "Starting Formula"
beginning_time = Time.now
  PartA = 1/Math.sqrt(5)
  PartB = ((1+Math.sqrt(5))/2)**(n.to_i+1)
  PartC = ((1-Math.sqrt(5))/2)**(n.to_i+1)
  a = PartA*PartB - PartA*PartC
  puts a.to_s
  end_time = Time.now
  puts "Finished Formula"
  puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
  puts "Starting Induction"
  beginning_time = Time.now
  prevVal=1
  prevPrevVal=0
  m=n.to_i
  while m > 0
    currVal = prevVal + prevPrevVal
    prevPrevVal = prevVal
    prevVal = currVal
    m = m-1
  end
  puts currVal.to_s
  end_time = Time.now
  puts "Finished Induction"
  puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
  puts"Starting Recursion"
  beginning_time = Time.now
  puts fibonacci( n.to_i )
  end_time = Time.now
  puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
  puts"Finished Recursion"
end
