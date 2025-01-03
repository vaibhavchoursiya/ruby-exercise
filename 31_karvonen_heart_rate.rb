# Karvonen heart rate

def karvonen_heart_rate_cal
  print "Resting Pulse: "
  resting_pluse = gets
  print "\tAge: "
  age = gets.chomp

  for i in 55..100
    thr = (((220 - age.to_i) - resting_pluse.to_i)*i/100) + resting_pluse.to_i
    if i == 55
      puts "Intensity\t\t|\tRate"
      puts "---------\t\t|\t--------"
    end
    puts "#{i}%\t\t\t|\t#{thr} bpm"
  end
end

karvonen_heart_rate_cal