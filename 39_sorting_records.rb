require 'date'

records = [
  {
    :fname => "John",
    :lname => "Johnson",
    :position => "Manager",
    :s_date => DateTime.new(2016,12,31)
  },
  {
    :fname => "Tou",
    :lname => "Xiong",
    :position => "Software Engineer",
    :s_date => DateTime.new(2016,10,05)
  },
  {
    :fname => "Michaela",
    :lname => "Michaelson",
    :position => "District Manager",
    :s_date => DateTime.new(2015,12,19)
  },
  {
    :fname => "Jake",
    :lname => "Jacobson",
    :position => "Programmer",
    :s_date => DateTime.new(2015,12,19)  
  }
]


for i in 0...records.size
  for j in i...records.size
    if records[j][:lname] < records[i][:lname]
        temp = records[j]
        records[j] = records[i]
        records[i] = temp
    end 
  end
end



for i in 0...records.size
  puts records[i][:lname]
end


