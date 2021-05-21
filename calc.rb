def add (a, b)
  return a + b
end

def subtract (a, b)
  return a - b
end

def multiply (a, b)
  return a * b
end

def division (a, b)
  return a / b
end

def exponentiation (a, b)
  return a ** b
end


puts "電卓起動\n式を半角で入力してください\n使用できる演算子は、+, -, *, /. **です\n「=」で答えを表示"

loop{
  print"数値:"
  num_01 = gets.to_i
  loop{
    print"演算子:"
    operator = gets
    if operator == "=\n"
      break
    end
    
    print "数値:"
    num_02 = gets.to_i
    
    if operator == "+\n"
      num_01 = add(num_01, num_02)
    end
    
    if operator == "-\n"
      num_01 = subtract(num_01, num_02)
    end
    
    if operator == "*\n"
      num_01 = multiply(num_01, num_02)
    end
    
    if operator == "/\n"
      num_01 = division(num_01, num_02)
    end
    
    if operator == "**\n" 
      num_01 = exponentiation(num_01, num_02)
    end
  }
  
  puts num_01
  print "プログラムを終了しますか？ y/n : "
  calc_check = gets 
  if calc_check == "y\n"
    break
  end
}

puts "プログラムを終了します。"