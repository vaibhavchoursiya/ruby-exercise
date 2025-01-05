

class PasswordGenerator
  @@special_chara = "@#$%^&*"
  @@char = "abcdefghijklmnopqrstuvwxyz".split("")

  def generate_num(max)
    rand = Random.rand(max)
    rand
  end

  def random_number
    return generate_num(10)
  end

  def random_special_char
    rand = generate_num(@@special_chara.size)
    @@special_chara[rand]
  end 

  def random_char 
    rand = generate_num(@@char.size)
    @@char[rand]
  end

  def generate_password(leng , special_char_lang, num_leng)
    password = []
    char_leng = leng - special_char_lang - num_leng

    char_leng.times do
      password.push(random_char)
    end

    special_char_lang.times do
      password.push(random_special_char)
    end

    num_leng.times do
      password.push(random_number)
    end

    password.join
  end
end

pg = PasswordGenerator.new

print " What's is the minimum length? "
leng = gets.chomp
print "How many special characters? "
special_char_length = gets.chomp
print "How many numbers? "
num_leng = gets.chomp

puts "Your password is\n#{pg.generate_password(leng.to_i, special_char_length.to_i, num_leng.to_i)}"