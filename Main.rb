include Math
def fibonacci( n )
    return  n  if n <= 2 
    fibonacci( n - 1 ) + fibonacci( n - 2 )
end 
class Main
puts "Please enter the nth number for the Fibanachi Sequence"
n = gets.chomp 
puts "Starting Formula"
  PartA = 1/Math.sqrt(5)
  PartB = ((1+Math.sqrt(5))/2)**(n.to_i+1)
  PartC = ((1-Math.sqrt(5))/2)**(n.to_i+1)
  a = PartA*PartB - PartA*PartC
  puts a.to_s
  puts "Finished Formula"
  puts "Starting Induction"
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
  puts "Finished Induction"
  puts"Starting Recursion"
  puts fibonacci( n.to_i )
  puts"Finished Recursion"
end
