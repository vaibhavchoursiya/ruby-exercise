def main
  print "What digit table you want? "
  digit = gets.chomp
  digit = digit.to_i

  for i in 1..10
    if digit == 0 && i == 1
      puts "0 x 0 = 0"
    end
    puts "#{digit} x #{i} = #{digit * i}"
  end
end

main