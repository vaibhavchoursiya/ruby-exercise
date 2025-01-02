=begin
  covert number to string.
  check decimal point exist or not
  if exist then check precision
  then create a new string
  covert it into float
=end

def contain?(string, value)
  for i in 0...string.size # execlude last index.
    if string[i] == value
      return {:exist => true, :index => i}
    end
  end
  return {:exist => false, :index => -1}
end

def decimal_precision(number, precision = 1)
  string = number.to_s
  contains_hash = contain?(string, ".")

  unless contains_hash[:exist]
    print("not a decimial value")
  else
    precision_index = contains_hash[:index] + precision

    if string[precision_index]
      return string[0..precision_index].to_f
    else 
      return string.to_f
    end
  end
end

puts decimal_precision(122.1, 6)

