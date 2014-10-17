include Math
class Main
def fibonacci( n )
  return  n  if ( 0..1 ).include? n
  ( Fibonacci( n - 1 ) + Fibonacci( n - 2 ) )
end
puts "Please enter the nth number for the Fibanachi Sequence"
n = gets.chomp 
puts "Starting Formula"
  a = ((13)**n.to_i-(12)**n.to_i)/2
  puts a.to_s
  puts "Finished Formula"
  puts "Starting Induction"
  prevVal=1
  prevPrevVal=1
  m= n.to_i
  do
    currVal = prevVal + prevPrevVal;
    prevPrevVal = prevVal;
    prevVal = currVal;
    m++;
  while(m < n)
  puts y.to_s
  puts "Finished Induction"
  puts"Starting Recursion"
  puts fibonacci( n )
  puts"Finished Recursion"
end
