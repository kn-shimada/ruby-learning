=begin
    素数を求める
=end

i = 0
prime = 0

loop{
  i += 1
  next if i == 1

  if i == 2
    puts "#{i}"
    next
  end

  prime_check = true
  (2..i).each do |j|
    break if j > i ** 0.5

    if i % j == 0
      prime_check = false
      break
    end
  end

  puts "#{i}" if prime_check
}