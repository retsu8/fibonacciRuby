include Math
class Main
 def Fibonacci n
  return  n  if ( 0..1 ).include? n
  ( Fibonacci( n - 1 ) + Fibonacci( n - 2 ) )
    puts Fibonacci( 5 )
end
puts "Please enter the nth number for the Fibanachi Sequence"
n = gets.chomp 
puts "Starting Formula"
  a = ((13)**n.to_i-(12)**n.to_i)/2
  puts a.to_s
  puts "Finished Formula"
  puts "Starting Induction"
  x=1
      y=1
      while(n.to_i >-1)
        y=x+y
        puts y.to_s
        n = n-1
      end
      puts y
  Main.Fibonacci n
end
