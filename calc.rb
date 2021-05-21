puts "電卓起動"
loop{
  puts "式を＝まで半角で入力してください\n使用できる演算子は、+, -, *, / です\n"
  formula_get = gets.gsub(" ", "")
  formula_data = formula_get.split("")
  formula_data.delete_at(formula_data.size - 1)
  nums = []
  operators = []
  operator_check = false
  num_check = false
  ans = 0
  
  for formula in formula_data 
    case formula
    when "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" then
      if operator_check or nums.size == 0
        nums.push(formula)
        operator_check = false
        num_check = true
      end

      if operator_check == false and num_check = false
        nums[nums.size - 1] = nums[nums.size - 1] + formula
        num_check = false
      end

    when "+", "-", "*", "/", "=" then
      operators.push(formula)
      operator_check = true
    else
      puts "エラー\nプログラム強制終了"
      break
    end
  end
  nums = nums.map(&:to_i)
  ans += nums[0]

  for i in 0..operators.size-1 do
    if operators[i] == "+"
      ans += nums[i+1]
    end

    if operators[i] == "-"
      ans -= nums[i+1]
    end

    if operators[i] == "*"
      ans *= nums[i+1]
    end

    if operators[i] == "/"
      ans /= nums[i+1]
    end
  
    if operators[i] == "="
      puts "計算終了\n#{formula_get}#{ans}"
    end
  end

  print "プログラムを終了しますか？ y/n : "
  calc_check = gets 
  if calc_check == "y\n"
    break
  end
  }

puts "プログラムを終了します。"